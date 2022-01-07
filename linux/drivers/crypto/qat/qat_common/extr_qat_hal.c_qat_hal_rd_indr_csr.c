
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 unsigned int CSR_CTX_POINTER ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int qat_hal_rd_indr_csr(struct icp_qat_fw_loader_handle *handle,
    unsigned char ae, unsigned char ctx,
    unsigned int ae_csr)
{
 unsigned int cur_ctx, csr_val;

 cur_ctx = qat_hal_rd_ae_csr(handle, ae, CSR_CTX_POINTER);
 qat_hal_wr_ae_csr(handle, ae, CSR_CTX_POINTER, ctx);
 csr_val = qat_hal_rd_ae_csr(handle, ae, ae_csr);
 qat_hal_wr_ae_csr(handle, ae, CSR_CTX_POINTER, cur_ctx);

 return csr_val;
}
