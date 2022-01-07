
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
typedef enum i40iw_flush_opcode { ____Placeholder_i40iw_flush_opcode } i40iw_flush_opcode ;
 int IB_WC_FATAL_ERR ;
 int IB_WC_GENERAL_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_REM_ACCESS_ERR ;
 int IB_WC_REM_OP_ERR ;

__attribute__((used)) static enum ib_wc_status i40iw_get_ib_wc(enum i40iw_flush_opcode opcode)
{
 switch (opcode) {
 case 130:
  return IB_WC_LOC_PROT_ERR;
 case 129:
  return IB_WC_REM_ACCESS_ERR;
 case 131:
  return IB_WC_LOC_QP_OP_ERR;
 case 128:
  return IB_WC_REM_OP_ERR;
 case 132:
  return IB_WC_LOC_LEN_ERR;
 case 133:
  return IB_WC_GENERAL_ERR;
 case 134:
 default:
  return IB_WC_FATAL_ERR;
 }
}
