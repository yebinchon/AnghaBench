
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* create_cq ) (struct ib_cq*,struct ib_cq_init_attr const*,int *) ;} ;
struct ib_device {TYPE_1__ ops; } ;
struct ib_cq_init_attr {int dummy; } ;
struct TYPE_5__ {int type; } ;
struct ib_cq {void (* event_handler ) (struct ib_event*,void*) ;TYPE_2__ res; int usecnt; void* cq_context; int comp_handler; int * uobject; struct ib_device* device; } ;
typedef int ib_comp_handler ;


 int ENOMEM ;
 struct ib_cq* ERR_PTR (int) ;
 int RDMA_RESTRACK_CQ ;
 int atomic_set (int *,int ) ;
 int ib_cq ;
 int kfree (struct ib_cq*) ;
 int rdma_restrack_kadd (TYPE_2__*) ;
 int rdma_restrack_set_task (TYPE_2__*,char const*) ;
 struct ib_cq* rdma_zalloc_drv_obj (struct ib_device*,int ) ;
 int stub1 (struct ib_cq*,struct ib_cq_init_attr const*,int *) ;

struct ib_cq *__ib_create_cq(struct ib_device *device,
        ib_comp_handler comp_handler,
        void (*event_handler)(struct ib_event *, void *),
        void *cq_context,
        const struct ib_cq_init_attr *cq_attr,
        const char *caller)
{
 struct ib_cq *cq;
 int ret;

 cq = rdma_zalloc_drv_obj(device, ib_cq);
 if (!cq)
  return ERR_PTR(-ENOMEM);

 cq->device = device;
 cq->uobject = ((void*)0);
 cq->comp_handler = comp_handler;
 cq->event_handler = event_handler;
 cq->cq_context = cq_context;
 atomic_set(&cq->usecnt, 0);
 cq->res.type = RDMA_RESTRACK_CQ;
 rdma_restrack_set_task(&cq->res, caller);

 ret = device->ops.create_cq(cq, cq_attr, ((void*)0));
 if (ret) {
  kfree(cq);
  return ERR_PTR(ret);
 }

 rdma_restrack_kadd(&cq->res);
 return cq;
}
