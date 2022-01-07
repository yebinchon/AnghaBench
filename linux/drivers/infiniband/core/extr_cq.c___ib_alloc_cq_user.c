
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct TYPE_5__ {int (* create_cq ) (struct ib_cq*,struct ib_cq_init_attr*,int *) ;int (* destroy_cq ) (struct ib_cq*,struct ib_udata*) ;} ;
struct ib_device {TYPE_1__ ops; } ;
struct ib_cq_init_attr {int cqe; int comp_vector; } ;
struct TYPE_6__ {int type; } ;
struct ib_cq {int poll_ctx; struct ib_cq* wc; struct ib_device* device; TYPE_2__ res; int comp_wq; int work; int comp_handler; int iop; int usecnt; void* cq_context; } ;
typedef enum ib_poll_context { ____Placeholder_ib_poll_context } ib_poll_context ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_cq* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_CQ_NEXT_COMP ;
 int IB_POLL_BATCH ;
 int IB_POLL_BUDGET_IRQ ;




 int INIT_WORK (int *,int ) ;
 int RDMA_RESTRACK_CQ ;
 int atomic_set (int *,int ) ;
 int ib_comp_unbound_wq ;
 int ib_comp_wq ;
 int ib_cq ;
 int ib_cq_completion_direct ;
 int ib_cq_completion_softirq ;
 int ib_cq_completion_workqueue ;
 int ib_cq_poll_work ;
 int ib_poll_handler ;
 int ib_req_notify_cq (struct ib_cq*,int ) ;
 int irq_poll_init (int *,int ,int ) ;
 int kfree (struct ib_cq*) ;
 struct ib_cq* kmalloc_array (int ,int,int ) ;
 int rdma_dim_init (struct ib_cq*) ;
 int rdma_restrack_del (TYPE_2__*) ;
 int rdma_restrack_kadd (TYPE_2__*) ;
 int rdma_restrack_set_task (TYPE_2__*,char const*) ;
 struct ib_cq* rdma_zalloc_drv_obj (struct ib_device*,int ) ;
 int stub1 (struct ib_cq*,struct ib_cq_init_attr*,int *) ;
 int stub2 (struct ib_cq*,struct ib_udata*) ;

struct ib_cq *__ib_alloc_cq_user(struct ib_device *dev, void *private,
     int nr_cqe, int comp_vector,
     enum ib_poll_context poll_ctx,
     const char *caller, struct ib_udata *udata)
{
 struct ib_cq_init_attr cq_attr = {
  .cqe = nr_cqe,
  .comp_vector = comp_vector,
 };
 struct ib_cq *cq;
 int ret = -ENOMEM;

 cq = rdma_zalloc_drv_obj(dev, ib_cq);
 if (!cq)
  return ERR_PTR(ret);

 cq->device = dev;
 cq->cq_context = private;
 cq->poll_ctx = poll_ctx;
 atomic_set(&cq->usecnt, 0);

 cq->wc = kmalloc_array(IB_POLL_BATCH, sizeof(*cq->wc), GFP_KERNEL);
 if (!cq->wc)
  goto out_free_cq;

 cq->res.type = RDMA_RESTRACK_CQ;
 rdma_restrack_set_task(&cq->res, caller);

 ret = dev->ops.create_cq(cq, &cq_attr, ((void*)0));
 if (ret)
  goto out_free_wc;

 rdma_restrack_kadd(&cq->res);

 rdma_dim_init(cq);

 switch (cq->poll_ctx) {
 case 131:
  cq->comp_handler = ib_cq_completion_direct;
  break;
 case 130:
  cq->comp_handler = ib_cq_completion_softirq;

  irq_poll_init(&cq->iop, IB_POLL_BUDGET_IRQ, ib_poll_handler);
  ib_req_notify_cq(cq, IB_CQ_NEXT_COMP);
  break;
 case 128:
 case 129:
  cq->comp_handler = ib_cq_completion_workqueue;
  INIT_WORK(&cq->work, ib_cq_poll_work);
  ib_req_notify_cq(cq, IB_CQ_NEXT_COMP);
  cq->comp_wq = (cq->poll_ctx == 128) ?
    ib_comp_wq : ib_comp_unbound_wq;
  break;
 default:
  ret = -EINVAL;
  goto out_destroy_cq;
 }

 return cq;

out_destroy_cq:
 rdma_restrack_del(&cq->res);
 cq->device->ops.destroy_cq(cq, udata);
out_free_wc:
 kfree(cq->wc);
out_free_cq:
 kfree(cq);
 return ERR_PTR(ret);
}
