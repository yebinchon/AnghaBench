
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc_rq {scalar_t__ data; } ;


 int kfree (struct pblk_gc_rq*) ;
 int vfree (scalar_t__) ;

__attribute__((used)) static void pblk_gc_free_gc_rq(struct pblk_gc_rq *gc_rq)
{
 if (gc_rq->data)
  vfree(gc_rq->data);
 kfree(gc_rq);
}
