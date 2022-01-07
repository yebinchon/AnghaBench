
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned short I2C_CLIENT_TEN ;

__attribute__((used)) static int i2c_check_addr_validity(unsigned int addr, unsigned short flags)
{
 if (flags & I2C_CLIENT_TEN) {

  if (addr > 0x3ff)
   return -EINVAL;
 } else {

  if (addr == 0x00 || addr > 0x7f)
   return -EINVAL;
 }
 return 0;
}
