
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rvt_rwq {int dummy; } ;
struct rvt_rq {TYPE_1__* kwq; TYPE_2__* wq; } ;
struct rvt_krwq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct TYPE_5__ {int wq; } ;
struct TYPE_4__ {int c_lock; int p_lock; int wq; int curr_wq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc_node (int,int ,int) ;
 int rvt_free_rq (struct rvt_rq*) ;
 int spin_lock_init (int *) ;
 TYPE_2__* vmalloc_user (scalar_t__) ;
 TYPE_1__* vzalloc_node (scalar_t__,int) ;

int rvt_alloc_rq(struct rvt_rq *rq, u32 size, int node,
   struct ib_udata *udata)
{
 if (udata) {
  rq->wq = vmalloc_user(sizeof(struct rvt_rwq) + size);
  if (!rq->wq)
   goto bail;

  rq->kwq = kzalloc_node(sizeof(*rq->kwq), GFP_KERNEL, node);
  if (!rq->kwq)
   goto bail;
  rq->kwq->curr_wq = rq->wq->wq;
 } else {

  rq->kwq =
   vzalloc_node(sizeof(struct rvt_krwq) + size, node);
  if (!rq->kwq)
   goto bail;
  rq->kwq->curr_wq = rq->kwq->wq;
 }

 spin_lock_init(&rq->kwq->p_lock);
 spin_lock_init(&rq->kwq->c_lock);
 return 0;
bail:
 rvt_free_rq(rq);
 return -ENOMEM;
}
