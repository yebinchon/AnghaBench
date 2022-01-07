
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int dummy; } ;


 int EINVAL ;
 int drxdap_fasi_read_block (struct i2c_device_addr*,int ,int,int*,int ) ;

__attribute__((used)) static int drxdap_fasi_read_reg16(struct i2c_device_addr *dev_addr,
      u32 addr,
      u16 *data, u32 flags)
{
 u8 buf[sizeof(*data)];
 int rc;

 if (!data)
  return -EINVAL;

 rc = drxdap_fasi_read_block(dev_addr, addr, sizeof(*data), buf, flags);
 *data = buf[0] + (((u16) buf[1]) << 8);
 return rc;
}
