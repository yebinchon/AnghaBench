
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct icp_qat_fw_loader_handle {int dummy; } ;


 int AE_MISC_CONTROL ;
 unsigned int UA_ECS ;
 int USTORE_ADDRESS ;
 int USTORE_DATA_LOWER ;
 int USTORE_DATA_UPPER ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;

__attribute__((used)) static void qat_hal_get_uwords(struct icp_qat_fw_loader_handle *handle,
          unsigned char ae, unsigned int uaddr,
          unsigned int words_num, uint64_t *uword)
{
 unsigned int i, uwrd_lo, uwrd_hi;
 unsigned int ustore_addr, misc_control;

 misc_control = qat_hal_rd_ae_csr(handle, ae, AE_MISC_CONTROL);
 qat_hal_wr_ae_csr(handle, ae, AE_MISC_CONTROL,
     misc_control & 0xfffffffb);
 ustore_addr = qat_hal_rd_ae_csr(handle, ae, USTORE_ADDRESS);
 uaddr |= UA_ECS;
 for (i = 0; i < words_num; i++) {
  qat_hal_wr_ae_csr(handle, ae, USTORE_ADDRESS, uaddr);
  uaddr++;
  uwrd_lo = qat_hal_rd_ae_csr(handle, ae, USTORE_DATA_LOWER);
  uwrd_hi = qat_hal_rd_ae_csr(handle, ae, USTORE_DATA_UPPER);
  uword[i] = uwrd_hi;
  uword[i] = (uword[i] << 0x20) | uwrd_lo;
 }
 qat_hal_wr_ae_csr(handle, ae, AE_MISC_CONTROL, misc_control);
 qat_hal_wr_ae_csr(handle, ae, USTORE_ADDRESS, ustore_addr);
}
