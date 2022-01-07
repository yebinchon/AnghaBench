
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct i2c_device_addr {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int drxj_dap_scu_atomic_read_write_block (struct i2c_device_addr*,int ,int,int*,int) ;

__attribute__((used)) static
int drxj_dap_scu_atomic_read_reg16(struct i2c_device_addr *dev_addr,
      u32 addr,
      u16 *data, u32 flags)
{
 u8 buf[2] = { 0 };
 int rc = -EIO;
 u16 word = 0;

 if (!data)
  return -EINVAL;

 rc = drxj_dap_scu_atomic_read_write_block(dev_addr, addr, 2, buf, 1);
 if (rc < 0)
  return rc;

 word = (u16) (buf[0] + (buf[1] << 8));

 *data = word;

 return rc;
}
