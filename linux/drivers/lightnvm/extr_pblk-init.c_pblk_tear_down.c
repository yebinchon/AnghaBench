
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int rl; int rwb; } ;


 int __pblk_pipeline_flush (struct pblk*) ;
 int __pblk_pipeline_stop (struct pblk*) ;
 int pblk_debug (struct pblk*,char*,int) ;
 int pblk_rb_sync_l2p (int *) ;
 int pblk_rl_free (int *) ;
 int pblk_writer_stop (struct pblk*) ;

__attribute__((used)) static void pblk_tear_down(struct pblk *pblk, bool graceful)
{
 if (graceful)
  __pblk_pipeline_flush(pblk);
 __pblk_pipeline_stop(pblk);
 pblk_writer_stop(pblk);
 pblk_rb_sync_l2p(&pblk->rwb);
 pblk_rl_free(&pblk->rl);

 pblk_debug(pblk, "consistent tear down (graceful:%d)\n", graceful);
}
