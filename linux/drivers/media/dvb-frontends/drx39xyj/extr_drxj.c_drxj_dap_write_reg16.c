
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int drxdap_fasi_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;
 int drxj_dap_write_aud_reg16 (struct i2c_device_addr*,int ,int ) ;
 scalar_t__ is_handled_by_aud_tr_if (int ) ;

__attribute__((used)) static int drxj_dap_write_reg16(struct i2c_device_addr *dev_addr,
           u32 addr,
           u16 data, u32 flags)
{
 int stat = -EIO;


 if (dev_addr == ((void*)0))
  return -EINVAL;

 if (is_handled_by_aud_tr_if(addr))
  stat = drxj_dap_write_aud_reg16(dev_addr, addr, data);
 else
  stat = drxdap_fasi_write_reg16(dev_addr,
           addr, data, flags);

 return stat;
}
