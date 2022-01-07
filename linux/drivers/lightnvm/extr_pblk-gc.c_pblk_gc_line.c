
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_ws {int ws; struct pblk_line* line; struct pblk* pblk; } ;
struct pblk_line {int id; } ;
struct pblk_gc {int gc_reader_wq; int pipeline_gc; } ;
struct pblk {struct pblk_gc gc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 struct pblk_line_ws* kmalloc (int,int ) ;
 int pblk_debug (struct pblk*,char*,int ) ;
 int pblk_gc_line_prepare_ws ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int pblk_gc_line(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_gc *gc = &pblk->gc;
 struct pblk_line_ws *line_ws;

 pblk_debug(pblk, "line '%d' being reclaimed for GC\n", line->id);

 line_ws = kmalloc(sizeof(struct pblk_line_ws), GFP_KERNEL);
 if (!line_ws)
  return -ENOMEM;

 line_ws->pblk = pblk;
 line_ws->line = line;

 atomic_inc(&gc->pipeline_gc);
 INIT_WORK(&line_ws->ws, pblk_gc_line_prepare_ws);
 queue_work(gc->gc_reader_wq, &line_ws->ws);

 return 0;
}
