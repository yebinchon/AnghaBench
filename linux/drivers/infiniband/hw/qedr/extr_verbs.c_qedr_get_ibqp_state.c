
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qed_roce_qp_state { ____Placeholder_qed_roce_qp_state } qed_roce_qp_state ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int IB_QPS_ERR ;
 int IB_QPS_INIT ;
 int IB_QPS_RESET ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QPS_SQD ;
 int IB_QPS_SQE ;
__attribute__((used)) static enum ib_qp_state qedr_get_ibqp_state(enum qed_roce_qp_state qp_state)
{
 switch (qp_state) {
 case 132:
  return IB_QPS_RESET;
 case 133:
  return IB_QPS_INIT;
 case 131:
  return IB_QPS_RTR;
 case 130:
  return IB_QPS_RTS;
 case 129:
  return IB_QPS_SQD;
 case 134:
  return IB_QPS_ERR;
 case 128:
  return IB_QPS_SQE;
 }
 return IB_QPS_ERR;
}
