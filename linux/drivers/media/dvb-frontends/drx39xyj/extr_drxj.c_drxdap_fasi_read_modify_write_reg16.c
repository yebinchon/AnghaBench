
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int dummy; } ;


 int DRXDAP_FASI_RMW ;
 int EINVAL ;
 int EIO ;
 int drxdap_fasi_read_reg16 (struct i2c_device_addr*,int ,int *,int ) ;
 int drxdap_fasi_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;

__attribute__((used)) static int drxdap_fasi_read_modify_write_reg16(struct i2c_device_addr *dev_addr,
          u32 waddr,
          u32 raddr,
          u16 wdata, u16 *rdata)
{
 int rc = -EIO;
 return rc;
}
