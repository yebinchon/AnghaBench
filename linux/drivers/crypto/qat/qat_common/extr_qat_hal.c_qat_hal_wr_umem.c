
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 unsigned int UA_ECS ;
 int USTORE_ADDRESS ;
 int USTORE_DATA_LOWER ;
 int USTORE_DATA_UPPER ;
 int hweight32 (unsigned int) ;
 unsigned int qat_hal_rd_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ) ;
 int qat_hal_wr_ae_csr (struct icp_qat_fw_loader_handle*,unsigned char,int ,unsigned int) ;

void qat_hal_wr_umem(struct icp_qat_fw_loader_handle *handle,
       unsigned char ae, unsigned int uaddr,
       unsigned int words_num, unsigned int *data)
{
 unsigned int i, ustore_addr;

 ustore_addr = qat_hal_rd_ae_csr(handle, ae, USTORE_ADDRESS);
 uaddr |= UA_ECS;
 qat_hal_wr_ae_csr(handle, ae, USTORE_ADDRESS, uaddr);
 for (i = 0; i < words_num; i++) {
  unsigned int uwrd_lo, uwrd_hi, tmp;

  uwrd_lo = ((data[i] & 0xfff0000) << 4) | (0x3 << 18) |
     ((data[i] & 0xff00) << 2) |
     (0x3 << 8) | (data[i] & 0xff);
  uwrd_hi = (0xf << 4) | ((data[i] & 0xf0000000) >> 28);
  uwrd_hi |= (hweight32(data[i] & 0xffff) & 0x1) << 8;
  tmp = ((data[i] >> 0x10) & 0xffff);
  uwrd_hi |= (hweight32(tmp) & 0x1) << 9;
  qat_hal_wr_ae_csr(handle, ae, USTORE_DATA_LOWER, uwrd_lo);
  qat_hal_wr_ae_csr(handle, ae, USTORE_DATA_UPPER, uwrd_hi);
 }
 qat_hal_wr_ae_csr(handle, ae, USTORE_ADDRESS, ustore_addr);
}
