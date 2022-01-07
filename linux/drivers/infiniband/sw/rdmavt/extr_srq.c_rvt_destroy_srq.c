
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kwq; } ;
struct rvt_srq {TYPE_1__ rq; TYPE_2__* ip; } ;
struct rvt_dev_info {int n_srqs_lock; int n_srqs_allocated; } ;
struct ib_udata {int dummy; } ;
struct ib_srq {int device; } ;
struct TYPE_4__ {int ref; } ;


 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_srq* ibsrq_to_rvtsrq (struct ib_srq*) ;
 int kref_put (int *,int ) ;
 int kvfree (int ) ;
 int rvt_release_mmap_info ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rvt_destroy_srq(struct ib_srq *ibsrq, struct ib_udata *udata)
{
 struct rvt_srq *srq = ibsrq_to_rvtsrq(ibsrq);
 struct rvt_dev_info *dev = ib_to_rvt(ibsrq->device);

 spin_lock(&dev->n_srqs_lock);
 dev->n_srqs_allocated--;
 spin_unlock(&dev->n_srqs_lock);
 if (srq->ip)
  kref_put(&srq->ip->ref, rvt_release_mmap_info);
 kvfree(srq->rq.kwq);
}
