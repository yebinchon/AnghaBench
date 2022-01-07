
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;


 int __pblk_pipeline_flush (struct pblk*) ;
 int __pblk_pipeline_stop (struct pblk*) ;

void pblk_pipeline_stop(struct pblk *pblk)
{
 __pblk_pipeline_flush(pblk);
 __pblk_pipeline_stop(pblk);
}
