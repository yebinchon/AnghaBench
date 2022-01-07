
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct nitrox_device {int dummy; } ;


 int UCD_UCODE_LOAD_BLOCK_NUM ;
 int UCD_UCODE_LOAD_IDX_DATAX (int) ;
 int nitrox_write_csr (struct nitrox_device*,int,int) ;
 scalar_t__ roundup (scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void write_to_ucd_unit(struct nitrox_device *ndev, u32 ucode_size,
         u64 *ucode_data, int block_num)
{
 u32 code_size;
 u64 offset, data;
 int i = 0;
 offset = UCD_UCODE_LOAD_BLOCK_NUM;
 nitrox_write_csr(ndev, offset, block_num);

 code_size = ucode_size;
 code_size = roundup(code_size, 8);
 while (code_size) {
  data = ucode_data[i];

  offset = UCD_UCODE_LOAD_IDX_DATAX(i);
  nitrox_write_csr(ndev, offset, data);
  code_size -= 8;
  i++;
 }

 usleep_range(300, 400);
}
