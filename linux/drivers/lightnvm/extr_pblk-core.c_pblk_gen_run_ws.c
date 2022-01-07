
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct pblk_line_ws {int ws; void* priv; struct pblk_line* line; struct pblk* pblk; } ;
struct pblk_line {int dummy; } ;
struct pblk {int gen_ws_pool; } ;
typedef int gfp_t ;


 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 struct pblk_line_ws* mempool_alloc (int *,int ) ;
 int queue_work (struct workqueue_struct*,int *) ;

void pblk_gen_run_ws(struct pblk *pblk, struct pblk_line *line, void *priv,
        void (*work)(struct work_struct *), gfp_t gfp_mask,
        struct workqueue_struct *wq)
{
 struct pblk_line_ws *line_ws;

 line_ws = mempool_alloc(&pblk->gen_ws_pool, gfp_mask);

 line_ws->pblk = pblk;
 line_ws->line = line;
 line_ws->priv = priv;

 INIT_WORK(&line_ws->ws, work);
 queue_work(wq, &line_ws->ws);
}
