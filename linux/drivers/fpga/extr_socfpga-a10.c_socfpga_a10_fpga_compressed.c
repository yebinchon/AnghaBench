
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int RBF_DECOMPRESS_OFFSET ;

__attribute__((used)) static int socfpga_a10_fpga_compressed(u32 *buf32, size_t buf32_size)
{
 if (buf32_size < RBF_DECOMPRESS_OFFSET + 1)
  return -EINVAL;


 return !((buf32[RBF_DECOMPRESS_OFFSET] >> 1) & 1);
}
