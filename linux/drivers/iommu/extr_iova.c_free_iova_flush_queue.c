
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int * entry_dtor; int * flush_cb; int * fq; int fq_timer; } ;


 int del_timer (int *) ;
 int fq_destroy_all_entries (struct iova_domain*) ;
 int free_percpu (int *) ;
 int has_iova_flush_queue (struct iova_domain*) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void free_iova_flush_queue(struct iova_domain *iovad)
{
 if (!has_iova_flush_queue(iovad))
  return;

 if (timer_pending(&iovad->fq_timer))
  del_timer(&iovad->fq_timer);

 fq_destroy_all_entries(iovad);

 free_percpu(iovad->fq);

 iovad->fq = ((void*)0);
 iovad->flush_cb = ((void*)0);
 iovad->entry_dtor = ((void*)0);
}
