
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct i2c_device_addr {int dummy; } ;
typedef int data ;


 int drxdap_fasi_write_block (struct i2c_device_addr*,int,int,scalar_t__*,int) ;

__attribute__((used)) static int drxdap_fasi_write_reg32(struct i2c_device_addr *dev_addr,
       u32 addr,
       u32 data, u32 flags)
{
 u8 buf[sizeof(data)];

 buf[0] = (u8) ((data >> 0) & 0xFF);
 buf[1] = (u8) ((data >> 8) & 0xFF);
 buf[2] = (u8) ((data >> 16) & 0xFF);
 buf[3] = (u8) ((data >> 24) & 0xFF);

 return drxdap_fasi_write_block(dev_addr, addr, sizeof(data), buf, flags);
}
