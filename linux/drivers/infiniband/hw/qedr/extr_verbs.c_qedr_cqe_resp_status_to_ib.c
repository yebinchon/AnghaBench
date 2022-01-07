
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IB_WC_GENERAL_ERR ;
 int IB_WC_LOC_ACCESS_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_MW_BIND_ERR ;
 int IB_WC_REM_INV_RD_REQ_ERR ;
 int IB_WC_SUCCESS ;
__attribute__((used)) static inline int qedr_cqe_resp_status_to_ib(u8 status)
{
 switch (status) {
 case 134:
  return IB_WC_LOC_ACCESS_ERR;
 case 133:
  return IB_WC_LOC_LEN_ERR;
 case 131:
  return IB_WC_LOC_QP_OP_ERR;
 case 132:
  return IB_WC_LOC_PROT_ERR;
 case 130:
  return IB_WC_MW_BIND_ERR;
 case 128:
  return IB_WC_REM_INV_RD_REQ_ERR;
 case 129:
  return IB_WC_SUCCESS;
 default:
  return IB_WC_GENERAL_ERR;
 }
}
