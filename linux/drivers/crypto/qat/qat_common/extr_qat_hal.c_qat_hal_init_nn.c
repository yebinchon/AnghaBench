
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 int EINVAL ;
 unsigned char ICP_QAT_UCLO_MAX_CTX ;
 int pr_err (char*) ;
 int qat_hal_put_rel_nn (struct icp_qat_fw_loader_handle*,unsigned char,unsigned char,unsigned short,unsigned int) ;
 int test_bit (unsigned char,unsigned long*) ;

int qat_hal_init_nn(struct icp_qat_fw_loader_handle *handle,
      unsigned char ae, unsigned char ctx_mask,
      unsigned short reg_num, unsigned int regdata)
{
 int stat = 0;
 unsigned char ctx;

 if (ctx_mask == 0)
  return -EINVAL;

 for (ctx = 0; ctx < ICP_QAT_UCLO_MAX_CTX; ctx++) {
  if (!test_bit(ctx, (unsigned long *)&ctx_mask))
   continue;
  stat = qat_hal_put_rel_nn(handle, ae, ctx, reg_num, regdata);
  if (stat) {
   pr_err("QAT: write neigh error\n");
   return -EINVAL;
  }
 }

 return 0;
}
