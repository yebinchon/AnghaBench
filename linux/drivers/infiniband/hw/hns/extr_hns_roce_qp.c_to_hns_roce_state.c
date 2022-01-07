
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef enum hns_roce_qp_state { ____Placeholder_hns_roce_qp_state } hns_roce_qp_state ;


 int HNS_ROCE_QP_NUM_STATE ;
 int HNS_ROCE_QP_STATE_ERR ;
 int HNS_ROCE_QP_STATE_INIT ;
 int HNS_ROCE_QP_STATE_RST ;
 int HNS_ROCE_QP_STATE_RTR ;
 int HNS_ROCE_QP_STATE_RTS ;
 int HNS_ROCE_QP_STATE_SQD ;







enum hns_roce_qp_state to_hns_roce_state(enum ib_qp_state state)
{
 switch (state) {
 case 131:
  return HNS_ROCE_QP_STATE_RST;
 case 132:
  return HNS_ROCE_QP_STATE_INIT;
 case 130:
  return HNS_ROCE_QP_STATE_RTR;
 case 129:
  return HNS_ROCE_QP_STATE_RTS;
 case 128:
  return HNS_ROCE_QP_STATE_SQD;
 case 133:
  return HNS_ROCE_QP_STATE_ERR;
 default:
  return HNS_ROCE_QP_NUM_STATE;
 }
}
