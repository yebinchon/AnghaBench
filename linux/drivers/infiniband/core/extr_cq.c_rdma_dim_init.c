
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_cq {scalar_t__ poll_ctx; struct dim* dim; TYPE_2__* device; } ;
struct dim {int work; struct ib_cq* priv; int profile_ix; int tune_state; int state; } ;
struct TYPE_3__ {int modify_cq; } ;
struct TYPE_4__ {int use_cq_dim; TYPE_1__ ops; } ;


 int DIM_GOING_RIGHT ;
 int DIM_START_MEASURE ;
 int GFP_KERNEL ;
 scalar_t__ IB_POLL_DIRECT ;
 int INIT_WORK (int *,int ) ;
 int RDMA_DIM_START_PROFILE ;
 int ib_cq_rdma_dim_work ;
 struct dim* kzalloc (int,int ) ;

__attribute__((used)) static void rdma_dim_init(struct ib_cq *cq)
{
 struct dim *dim;

 if (!cq->device->ops.modify_cq || !cq->device->use_cq_dim ||
     cq->poll_ctx == IB_POLL_DIRECT)
  return;

 dim = kzalloc(sizeof(struct dim), GFP_KERNEL);
 if (!dim)
  return;

 dim->state = DIM_START_MEASURE;
 dim->tune_state = DIM_GOING_RIGHT;
 dim->profile_ix = RDMA_DIM_START_PROFILE;
 dim->priv = cq;
 cq->dim = dim;

 INIT_WORK(&dim->work, ib_cq_rdma_dim_work);
}
