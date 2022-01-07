
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int task; } ;
struct auto_mode_param {scalar_t__ qp_type; } ;
struct TYPE_4__ {struct auto_mode_param param; } ;
struct rdma_counter {TYPE_2__ res; TYPE_1__ mode; } ;
struct TYPE_6__ {int task; } ;
struct ib_qp {scalar_t__ qp_type; TYPE_3__ res; } ;
typedef enum rdma_nl_counter_mask { ____Placeholder_rdma_nl_counter_mask } rdma_nl_counter_mask ;


 int RDMA_COUNTER_MASK_QP_TYPE ;
 int rdma_is_visible_in_pid_ns (TYPE_3__*) ;
 scalar_t__ task_pid_nr (int ) ;

__attribute__((used)) static bool auto_mode_match(struct ib_qp *qp, struct rdma_counter *counter,
       enum rdma_nl_counter_mask auto_mask)
{
 struct auto_mode_param *param = &counter->mode.param;
 bool match = 1;

 if (!rdma_is_visible_in_pid_ns(&qp->res))
  return 0;


 if (task_pid_nr(counter->res.task) != task_pid_nr(qp->res.task))
  return 0;

 if (auto_mask & RDMA_COUNTER_MASK_QP_TYPE)
  match &= (param->qp_type == qp->qp_type);

 return match;
}
