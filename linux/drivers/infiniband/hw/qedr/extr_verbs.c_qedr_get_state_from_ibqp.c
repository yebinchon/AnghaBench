
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qed_roce_qp_state { ____Placeholder_qed_roce_qp_state } qed_roce_qp_state ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
 int QED_ROCE_QP_STATE_ERR ;
 int QED_ROCE_QP_STATE_INIT ;
 int QED_ROCE_QP_STATE_RESET ;
 int QED_ROCE_QP_STATE_RTR ;
 int QED_ROCE_QP_STATE_RTS ;
 int QED_ROCE_QP_STATE_SQD ;

__attribute__((used)) static enum qed_roce_qp_state qedr_get_state_from_ibqp(
     enum ib_qp_state qp_state)
{
 switch (qp_state) {
 case 131:
  return QED_ROCE_QP_STATE_RESET;
 case 132:
  return QED_ROCE_QP_STATE_INIT;
 case 130:
  return QED_ROCE_QP_STATE_RTR;
 case 129:
  return QED_ROCE_QP_STATE_RTS;
 case 128:
  return QED_ROCE_QP_STATE_SQD;
 case 133:
  return QED_ROCE_QP_STATE_ERR;
 default:
  return QED_ROCE_QP_STATE_ERR;
 }
}
