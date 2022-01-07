
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int i2c_check_7bit_addr_validity_strict(unsigned short addr)
{
 if (addr < 0x08 || addr > 0x77)
  return -EINVAL;
 return 0;
}
