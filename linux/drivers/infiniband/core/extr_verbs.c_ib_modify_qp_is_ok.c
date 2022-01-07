
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef enum ib_qp_attr_mask { ____Placeholder_ib_qp_attr_mask } ib_qp_attr_mask ;
struct TYPE_2__ {int* req_param; int* opt_param; int valid; } ;


 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QPS_SQD ;
 int IB_QPS_SQE ;
 int IB_QP_CUR_STATE ;
 int IB_QP_STATE ;
 TYPE_1__** qp_state_table ;

bool ib_modify_qp_is_ok(enum ib_qp_state cur_state, enum ib_qp_state next_state,
   enum ib_qp_type type, enum ib_qp_attr_mask mask)
{
 enum ib_qp_attr_mask req_param, opt_param;

 if (mask & IB_QP_CUR_STATE &&
     cur_state != IB_QPS_RTR && cur_state != IB_QPS_RTS &&
     cur_state != IB_QPS_SQD && cur_state != IB_QPS_SQE)
  return 0;

 if (!qp_state_table[cur_state][next_state].valid)
  return 0;

 req_param = qp_state_table[cur_state][next_state].req_param[type];
 opt_param = qp_state_table[cur_state][next_state].opt_param[type];

 if ((mask & req_param) != req_param)
  return 0;

 if (mask & ~(req_param | opt_param | IB_QP_STATE))
  return 0;

 return 1;
}
