
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_dev_info {int n_cqs_lock; int n_cqs_allocated; } ;
struct rvt_cq {int queue; TYPE_1__* ip; int comptask; struct rvt_dev_info* rdi; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_2__ {int ref; } ;


 int flush_work (int *) ;
 struct rvt_cq* ibcq_to_rvtcq (struct ib_cq*) ;
 int kref_put (int *,int ) ;
 int rvt_release_mmap_info ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vfree (int ) ;

void rvt_destroy_cq(struct ib_cq *ibcq, struct ib_udata *udata)
{
 struct rvt_cq *cq = ibcq_to_rvtcq(ibcq);
 struct rvt_dev_info *rdi = cq->rdi;

 flush_work(&cq->comptask);
 spin_lock_irq(&rdi->n_cqs_lock);
 rdi->n_cqs_allocated--;
 spin_unlock_irq(&rdi->n_cqs_lock);
 if (cq->ip)
  kref_put(&cq->ip->ref, rvt_release_mmap_info);
 else
  vfree(cq->queue);
}
