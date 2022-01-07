
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ocrdma_qp_state { ____Placeholder_ocrdma_qp_state } ocrdma_qp_state ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
 int OCRDMA_QPS_ERR ;
 int OCRDMA_QPS_INIT ;
 int OCRDMA_QPS_RST ;
 int OCRDMA_QPS_RTR ;
 int OCRDMA_QPS_RTS ;
 int OCRDMA_QPS_SQD ;
 int OCRDMA_QPS_SQE ;

__attribute__((used)) static enum ocrdma_qp_state get_ocrdma_qp_state(enum ib_qp_state qps)
{
 switch (qps) {
 case 132:
  return OCRDMA_QPS_RST;
 case 133:
  return OCRDMA_QPS_INIT;
 case 131:
  return OCRDMA_QPS_RTR;
 case 130:
  return OCRDMA_QPS_RTS;
 case 129:
  return OCRDMA_QPS_SQD;
 case 128:
  return OCRDMA_QPS_SQE;
 case 134:
  return OCRDMA_QPS_ERR;
 }
 return OCRDMA_QPS_ERR;
}
