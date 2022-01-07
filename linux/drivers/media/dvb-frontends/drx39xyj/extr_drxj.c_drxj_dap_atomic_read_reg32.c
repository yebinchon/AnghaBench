
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct i2c_device_addr {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int drxj_dap_atomic_read_write_block (struct i2c_device_addr*,int,int,scalar_t__*,int) ;

__attribute__((used)) static
int drxj_dap_atomic_read_reg32(struct i2c_device_addr *dev_addr,
         u32 addr,
         u32 *data, u32 flags)
{
 u8 buf[sizeof(*data)] = { 0 };
 int rc = -EIO;
 u32 word = 0;

 if (!data)
  return -EINVAL;

 rc = drxj_dap_atomic_read_write_block(dev_addr, addr,
           sizeof(*data), buf, 1);

 if (rc < 0)
  return 0;

 word = (u32) buf[3];
 word <<= 8;
 word |= (u32) buf[2];
 word <<= 8;
 word |= (u32) buf[1];
 word <<= 8;
 word |= (u32) buf[0];

 *data = word;

 return rc;
}
