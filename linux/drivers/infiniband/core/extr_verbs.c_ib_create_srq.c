
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* xrcd; } ;
struct TYPE_10__ {TYPE_1__ xrc; TYPE_6__* cq; } ;
struct ib_srq_init_attr {scalar_t__ srq_type; TYPE_2__ ext; int srq_context; int event_handler; } ;
struct TYPE_13__ {TYPE_4__* xrcd; } ;
struct TYPE_15__ {TYPE_6__* cq; TYPE_5__ xrc; } ;
struct ib_srq {scalar_t__ srq_type; TYPE_7__ ext; struct ib_pd* pd; int srq_context; int event_handler; TYPE_8__* device; } ;
struct ib_pd {int usecnt; TYPE_8__* device; } ;
struct TYPE_11__ {int (* create_srq ) (struct ib_srq*,struct ib_srq_init_attr*,int *) ;} ;
struct TYPE_16__ {TYPE_3__ ops; } ;
struct TYPE_14__ {int usecnt; } ;
struct TYPE_12__ {int usecnt; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct ib_srq* ERR_PTR (int) ;
 scalar_t__ IB_SRQT_XRC ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ib_srq ;
 scalar_t__ ib_srq_has_cq (scalar_t__) ;
 int kfree (struct ib_srq*) ;
 struct ib_srq* rdma_zalloc_drv_obj (TYPE_8__*,int ) ;
 int stub1 (struct ib_srq*,struct ib_srq_init_attr*,int *) ;

struct ib_srq *ib_create_srq(struct ib_pd *pd,
        struct ib_srq_init_attr *srq_init_attr)
{
 struct ib_srq *srq;
 int ret;

 if (!pd->device->ops.create_srq)
  return ERR_PTR(-EOPNOTSUPP);

 srq = rdma_zalloc_drv_obj(pd->device, ib_srq);
 if (!srq)
  return ERR_PTR(-ENOMEM);

 srq->device = pd->device;
 srq->pd = pd;
 srq->event_handler = srq_init_attr->event_handler;
 srq->srq_context = srq_init_attr->srq_context;
 srq->srq_type = srq_init_attr->srq_type;

 if (ib_srq_has_cq(srq->srq_type)) {
  srq->ext.cq = srq_init_attr->ext.cq;
  atomic_inc(&srq->ext.cq->usecnt);
 }
 if (srq->srq_type == IB_SRQT_XRC) {
  srq->ext.xrc.xrcd = srq_init_attr->ext.xrc.xrcd;
  atomic_inc(&srq->ext.xrc.xrcd->usecnt);
 }
 atomic_inc(&pd->usecnt);

 ret = pd->device->ops.create_srq(srq, srq_init_attr, ((void*)0));
 if (ret) {
  atomic_dec(&srq->pd->usecnt);
  if (srq->srq_type == IB_SRQT_XRC)
   atomic_dec(&srq->ext.xrc.xrcd->usecnt);
  if (ib_srq_has_cq(srq->srq_type))
   atomic_dec(&srq->ext.cq->usecnt);
  kfree(srq);
  return ERR_PTR(ret);
 }

 return srq;
}
