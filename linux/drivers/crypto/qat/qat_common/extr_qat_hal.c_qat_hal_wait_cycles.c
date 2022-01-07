
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 int ACS_ABO_BITPOS ;
 int ACTIVE_CTX_STATUS ;
 int EFAULT ;
 int MAX_RETRY_TIMES ;
 int PROFILE_COUNT ;
 int pr_err (char*) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;

__attribute__((used)) static int qat_hal_wait_cycles(struct icp_qat_fw_loader_handle *handle,
          unsigned char ae, unsigned int cycles,
          int chk_inactive)
{
 unsigned int base_cnt = 0, cur_cnt = 0;
 unsigned int csr = (1 << ACS_ABO_BITPOS);
 int times = MAX_RETRY_TIMES;
 int elapsed_cycles = 0;

 base_cnt = qat_hal_rd_ae_csr(handle, ae, PROFILE_COUNT);
 base_cnt &= 0xffff;
 while ((int)cycles > elapsed_cycles && times--) {
  if (chk_inactive)
   csr = qat_hal_rd_ae_csr(handle, ae, ACTIVE_CTX_STATUS);

  cur_cnt = qat_hal_rd_ae_csr(handle, ae, PROFILE_COUNT);
  cur_cnt &= 0xffff;
  elapsed_cycles = cur_cnt - base_cnt;

  if (elapsed_cycles < 0)
   elapsed_cycles += 0x10000;


  if (elapsed_cycles >= 8 && !(csr & (1 << ACS_ABO_BITPOS)))
   return 0;
 }
 if (times < 0) {
  pr_err("QAT: wait_num_cycles time out\n");
  return -EFAULT;
 }
 return 0;
}
