
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_mode_param {int qp_type; } ;
struct TYPE_2__ {int mask; int mode; struct auto_mode_param param; } ;
struct rdma_counter {TYPE_1__ mode; } ;
struct ib_qp {int qp_type; } ;
typedef enum rdma_nl_counter_mask { ____Placeholder_rdma_nl_counter_mask } rdma_nl_counter_mask ;


 int RDMA_COUNTER_MASK_QP_TYPE ;
 int RDMA_COUNTER_MODE_AUTO ;

__attribute__((used)) static void auto_mode_init_counter(struct rdma_counter *counter,
       const struct ib_qp *qp,
       enum rdma_nl_counter_mask new_mask)
{
 struct auto_mode_param *param = &counter->mode.param;

 counter->mode.mode = RDMA_COUNTER_MODE_AUTO;
 counter->mode.mask = new_mask;

 if (new_mask & RDMA_COUNTER_MASK_QP_TYPE)
  param->qp_type = qp->qp_type;
}
