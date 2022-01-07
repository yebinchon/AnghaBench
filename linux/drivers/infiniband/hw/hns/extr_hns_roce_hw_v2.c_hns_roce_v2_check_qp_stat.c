
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int IB_QPS_ERR ;
 int IB_QPS_RESET ;
 int IB_QPS_RTS ;
 int IB_QPS_SQD ;
 int IB_QPS_SQE ;

__attribute__((used)) static inline bool hns_roce_v2_check_qp_stat(enum ib_qp_state cur_state,
          enum ib_qp_state new_state)
{

 if ((cur_state != IB_QPS_RESET &&
     (new_state == IB_QPS_ERR || new_state == IB_QPS_RESET)) ||
     ((cur_state == IB_QPS_RTS || cur_state == IB_QPS_SQD) &&
     (new_state == IB_QPS_RTS || new_state == IB_QPS_SQD)) ||
     (cur_state == IB_QPS_SQE && new_state == IB_QPS_RTS))
  return 1;

 return 0;

}
