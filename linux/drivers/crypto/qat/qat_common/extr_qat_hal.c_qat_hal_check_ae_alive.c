
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned char ae_max_num; } ;


 int EFAULT ;
 int MAX_RETRY_TIMES ;
 int PROFILE_COUNT ;
 int pr_err (char*,unsigned char) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;

__attribute__((used)) static int qat_hal_check_ae_alive(struct icp_qat_fw_loader_handle *handle)
{
 unsigned int base_cnt, cur_cnt;
 unsigned char ae;
 int times = MAX_RETRY_TIMES;

 for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {
  base_cnt = qat_hal_rd_ae_csr(handle, ae, PROFILE_COUNT);
  base_cnt &= 0xffff;

  do {
   cur_cnt = qat_hal_rd_ae_csr(handle, ae, PROFILE_COUNT);
   cur_cnt &= 0xffff;
  } while (times-- && (cur_cnt == base_cnt));

  if (times < 0) {
   pr_err("QAT: AE%d is inactive!!\n", ae);
   return -EFAULT;
  }
 }

 return 0;
}
