
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;
typedef enum icp_qat_uof_regtype { ____Placeholder_icp_qat_uof_regtype } icp_qat_uof_regtype ;


 int EINVAL ;
 int ICP_QAT_UCLO_MAX_CTX ;
 unsigned short ICP_QAT_UCLO_MAX_GPR_REG ;
 int pr_err (char*) ;
 int qat_hal_convert_abs_to_rel (struct icp_qat_fw_loader_handle*,unsigned char,unsigned short,unsigned short*,unsigned char*) ;
 int qat_hal_wr_rel_reg (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,int,unsigned short,unsigned int) ;
 int test_bit (unsigned char,unsigned long*) ;

int qat_hal_init_gpr(struct icp_qat_fw_loader_handle *handle,
       unsigned char ae, unsigned char ctx_mask,
       enum icp_qat_uof_regtype reg_type,
       unsigned short reg_num, unsigned int regdata)
{
 int stat = 0;
 unsigned short reg;
 unsigned char ctx = 0;
 enum icp_qat_uof_regtype type;

 if (reg_num >= ICP_QAT_UCLO_MAX_GPR_REG)
  return -EINVAL;

 do {
  if (ctx_mask == 0) {
   qat_hal_convert_abs_to_rel(handle, ae, reg_num, &reg,
         &ctx);
   type = reg_type - 1;
  } else {
   reg = reg_num;
   type = reg_type;
   if (!test_bit(ctx, (unsigned long *)&ctx_mask))
    continue;
  }
  stat = qat_hal_wr_rel_reg(handle, ae, ctx, type, reg, regdata);
  if (stat) {
   pr_err("QAT: write gpr fail\n");
   return -EINVAL;
  }
 } while (ctx_mask && (ctx++ < ICP_QAT_UCLO_MAX_CTX));

 return 0;
}
