
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;
typedef enum icp_qat_uof_regtype { ____Placeholder_icp_qat_uof_regtype } icp_qat_uof_regtype ;


 int EFAULT ;
 int pr_err (char*,int) ;
 int qat_hal_init_gpr (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int,unsigned short,unsigned int) ;
 int qat_hal_init_nn (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,unsigned short,unsigned int) ;
 int qat_hal_init_rd_xfer (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int,unsigned short,unsigned int) ;
 int qat_hal_init_wr_xfer (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int,unsigned short,unsigned int) ;

__attribute__((used)) static int qat_uclo_init_reg(struct icp_qat_fw_loader_handle *handle,
        unsigned char ae, unsigned char ctx_mask,
        enum icp_qat_uof_regtype reg_type,
        unsigned short reg_addr, unsigned int value)
{
 switch (reg_type) {
 case 138:
 case 136:
  ctx_mask = 0;

 case 137:
 case 135:
  return qat_hal_init_gpr(handle, ae, ctx_mask, reg_type,
     reg_addr, value);
 case 133:
 case 144:
 case 132:
 case 143:
  ctx_mask = 0;

 case 130:
 case 141:
 case 131:
 case 142:
  return qat_hal_init_rd_xfer(handle, ae, ctx_mask, reg_type,
         reg_addr, value);
 case 129:
 case 140:
  ctx_mask = 0;

 case 128:
 case 139:
  return qat_hal_init_wr_xfer(handle, ae, ctx_mask, reg_type,
         reg_addr, value);
 case 134:
  return qat_hal_init_nn(handle, ae, ctx_mask, reg_addr, value);
 default:
  pr_err("QAT: UOF uses not supported reg type 0x%x\n", reg_type);
  return -EFAULT;
 }
 return 0;
}
