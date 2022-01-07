
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 unsigned int CSR_RETRY_TIMES ;
 int EFAULT ;
 int GET_AE_CSR (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int LCS_STATUS ;
 int LOCAL_CSR_STATUS ;
 int SET_AE_CSR (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,unsigned int) ;
 int pr_err (char*) ;

__attribute__((used)) static int qat_hal_wr_ae_csr(struct icp_qat_fw_loader_handle *handle,
        unsigned char ae, unsigned int csr,
        unsigned int value)
{
 unsigned int iterations = CSR_RETRY_TIMES;

 do {
  SET_AE_CSR(handle, ae, csr, value);
  if (!(GET_AE_CSR(handle, ae, LOCAL_CSR_STATUS) & LCS_STATUS))
   return 0;
 } while (iterations--);

 pr_err("QAT: Write CSR Timeout\n");
 return -EFAULT;
}
