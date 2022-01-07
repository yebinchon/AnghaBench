
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int pad_dist; int w_rq_pool; int e_rq_pool; int r_rq_pool; int rec_pool; int gen_ws_pool; int page_bio_pool; scalar_t__ bb_wq; scalar_t__ r_end_wq; scalar_t__ close_wq; } ;


 int destroy_workqueue (scalar_t__) ;
 int kfree (int ) ;
 int mempool_exit (int *) ;
 int pblk_put_global_caches () ;

__attribute__((used)) static void pblk_core_free(struct pblk *pblk)
{
 if (pblk->close_wq)
  destroy_workqueue(pblk->close_wq);

 if (pblk->r_end_wq)
  destroy_workqueue(pblk->r_end_wq);

 if (pblk->bb_wq)
  destroy_workqueue(pblk->bb_wq);

 mempool_exit(&pblk->page_bio_pool);
 mempool_exit(&pblk->gen_ws_pool);
 mempool_exit(&pblk->rec_pool);
 mempool_exit(&pblk->r_rq_pool);
 mempool_exit(&pblk->e_rq_pool);
 mempool_exit(&pblk->w_rq_pool);

 pblk_put_global_caches();
 kfree(pblk->pad_dist);
}
