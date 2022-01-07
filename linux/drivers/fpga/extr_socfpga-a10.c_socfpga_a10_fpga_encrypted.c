
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int RBF_ENCRYPTION_MODE_OFFSET ;

__attribute__((used)) static int socfpga_a10_fpga_encrypted(u32 *buf32, size_t buf32_size)
{
 if (buf32_size < RBF_ENCRYPTION_MODE_OFFSET + 1)
  return -EINVAL;


 return ((buf32[RBF_ENCRYPTION_MODE_OFFSET] >> 2) & 3) != 0;
}
