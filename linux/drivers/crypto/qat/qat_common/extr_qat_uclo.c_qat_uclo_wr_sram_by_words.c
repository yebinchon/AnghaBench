
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_fw_loader_handle {int dummy; } ;


 int SRAM_WRITE (struct icp_qat_fw_loader_handle*,unsigned int,unsigned int) ;
 int memcpy (unsigned int*,unsigned char*,int) ;

__attribute__((used)) static void qat_uclo_wr_sram_by_words(struct icp_qat_fw_loader_handle *handle,
          unsigned int addr, unsigned int *val,
          unsigned int num_in_bytes)
{
 unsigned int outval;
 unsigned char *ptr = (unsigned char *)val;

 while (num_in_bytes) {
  memcpy(&outval, ptr, 4);
  SRAM_WRITE(handle, addr, outval);
  num_in_bytes -= 4;
  ptr += 4;
  addr += 4;
 }
}
