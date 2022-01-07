
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 int IB_WC_BAD_RESP_ERR ;
 int IB_WC_FATAL_ERR ;
 int IB_WC_GENERAL_ERR ;
 int IB_WC_INV_EECN_ERR ;
 int IB_WC_INV_EEC_STATE_ERR ;
 int IB_WC_LOC_ACCESS_ERR ;
 int IB_WC_LOC_EEC_OP_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_LOC_RDD_VIOL_ERR ;
 int IB_WC_MW_BIND_ERR ;
 int IB_WC_REM_ABORT_ERR ;
 int IB_WC_REM_ACCESS_ERR ;
 int IB_WC_REM_INV_RD_REQ_ERR ;
 int IB_WC_REM_INV_REQ_ERR ;
 int IB_WC_REM_OP_ERR ;
 int IB_WC_RESP_TIMEOUT_ERR ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_RNR_RETRY_EXC_ERR ;
 int IB_WC_WR_FLUSH_ERR ;
__attribute__((used)) static enum ib_wc_status ocrdma_to_ibwc_err(u16 status)
{
 enum ib_wc_status ibwc_status;

 switch (status) {
 case 146:
  ibwc_status = IB_WC_GENERAL_ERR;
  break;
 case 141:
  ibwc_status = IB_WC_LOC_LEN_ERR;
  break;
 case 139:
  ibwc_status = IB_WC_LOC_QP_OP_ERR;
  break;
 case 142:
  ibwc_status = IB_WC_LOC_EEC_OP_ERR;
  break;
 case 140:
  ibwc_status = IB_WC_LOC_PROT_ERR;
  break;
 case 128:
  ibwc_status = IB_WC_WR_FLUSH_ERR;
  break;
 case 137:
  ibwc_status = IB_WC_MW_BIND_ERR;
  break;
 case 148:
  ibwc_status = IB_WC_BAD_RESP_ERR;
  break;
 case 143:
  ibwc_status = IB_WC_LOC_ACCESS_ERR;
  break;
 case 133:
  ibwc_status = IB_WC_REM_INV_REQ_ERR;
  break;
 case 135:
  ibwc_status = IB_WC_REM_ACCESS_ERR;
  break;
 case 132:
  ibwc_status = IB_WC_REM_OP_ERR;
  break;
 case 130:
  ibwc_status = IB_WC_RETRY_EXC_ERR;
  break;
 case 129:
  ibwc_status = IB_WC_RNR_RETRY_EXC_ERR;
  break;
 case 138:
  ibwc_status = IB_WC_LOC_RDD_VIOL_ERR;
  break;
 case 134:
  ibwc_status = IB_WC_REM_INV_RD_REQ_ERR;
  break;
 case 136:
  ibwc_status = IB_WC_REM_ABORT_ERR;
  break;
 case 145:
  ibwc_status = IB_WC_INV_EECN_ERR;
  break;
 case 144:
  ibwc_status = IB_WC_INV_EEC_STATE_ERR;
  break;
 case 147:
  ibwc_status = IB_WC_FATAL_ERR;
  break;
 case 131:
  ibwc_status = IB_WC_RESP_TIMEOUT_ERR;
  break;
 default:
  ibwc_status = IB_WC_GENERAL_ERR;
  break;
 }
 return ibwc_status;
}
