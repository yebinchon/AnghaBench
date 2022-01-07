
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;
typedef enum icp_qat_uof_regtype { ____Placeholder_icp_qat_uof_regtype } icp_qat_uof_regtype ;


 unsigned int CE_INUSE_CONTEXTS ;
 int CTX_ENABLES ;
 int EINVAL ;




 int SET_AE_XFER (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,unsigned int) ;
 int pr_err (char*,unsigned char) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;

__attribute__((used)) static int qat_hal_put_rel_rd_xfer(struct icp_qat_fw_loader_handle *handle,
       unsigned char ae, unsigned char ctx,
       enum icp_qat_uof_regtype reg_type,
       unsigned short reg_num, unsigned int val)
{
 int status = 0;
 unsigned int reg_addr;
 unsigned int ctx_enables;
 unsigned short mask;
 unsigned short dr_offset = 0x10;

 status = ctx_enables = qat_hal_rd_ae_csr(handle, ae, CTX_ENABLES);
 if (CE_INUSE_CONTEXTS & ctx_enables) {
  if (ctx & 0x1) {
   pr_err("QAT: bad 4-ctx mode,ctx=0x%x\n", ctx);
   return -EINVAL;
  }
  mask = 0x1f;
  dr_offset = 0x20;
 } else {
  mask = 0x0f;
 }
 if (reg_num & ~mask)
  return -EINVAL;
 reg_addr = reg_num + (ctx << 0x5);
 switch (reg_type) {
 case 129:
 case 128:
  SET_AE_XFER(handle, ae, reg_addr, val);
  break;
 case 131:
 case 130:
  SET_AE_XFER(handle, ae, (reg_addr + dr_offset), val);
  break;
 default:
  status = -EINVAL;
  break;
 }
 return status;
}
