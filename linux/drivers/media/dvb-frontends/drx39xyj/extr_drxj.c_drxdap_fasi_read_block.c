
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int i2c_addr; } ;


 int DRXDAPFASI_LONG_ADDR_ALLOWED ;
 int DRXDAP_FASI_FLAGS ;
 scalar_t__ DRXDAP_FASI_LONG_FORMAT (int) ;
 int DRXDAP_FASI_MODEFLAGS ;
 scalar_t__ DRXDAP_FASI_OFFSET_TOO_LARGE (int) ;
 int DRXDAP_FASI_RMW ;
 int DRXDAP_FASI_SINGLE_MASTER ;
 int DRXDAP_MAX_RCHUNKSIZE ;
 int DRXDAP_MAX_WCHUNKSIZE ;
 int EINVAL ;
 scalar_t__ IS_I2C_10BIT (int ) ;
 int drxbsp_i2c_write_read (struct i2c_device_addr*,int,scalar_t__*,struct i2c_device_addr*,int,scalar_t__*) ;

__attribute__((used)) static int drxdap_fasi_read_block(struct i2c_device_addr *dev_addr,
      u32 addr,
      u16 datasize,
      u8 *data, u32 flags)
{
 u8 buf[4];
 u16 bufx;
 int rc;
 u16 overhead_size = 0;


 if (dev_addr == ((void*)0))
  return -EINVAL;

 overhead_size = (IS_I2C_10BIT(dev_addr->i2c_addr) ? 2 : 1) +
     (DRXDAP_FASI_LONG_FORMAT(addr) ? 4 : 2);

 if ((DRXDAP_FASI_OFFSET_TOO_LARGE(addr)) ||
     ((!(DRXDAPFASI_LONG_ADDR_ALLOWED)) &&
      DRXDAP_FASI_LONG_FORMAT(addr)) ||
     (overhead_size > (DRXDAP_MAX_WCHUNKSIZE)) ||
     ((datasize != 0) && (data == ((void*)0))) || ((datasize & 1) == 1)) {
  return -EINVAL;
 }


 flags &= (~DRXDAP_FASI_RMW & ~DRXDAP_FASI_MODEFLAGS);





 do {
  u16 todo = (datasize < DRXDAP_MAX_RCHUNKSIZE ?
         datasize : DRXDAP_MAX_RCHUNKSIZE);

  bufx = 0;

  addr &= ~DRXDAP_FASI_FLAGS;
  addr |= flags;
  rc = drxbsp_i2c_write_read(dev_addr, bufx, buf, dev_addr, todo,
       data);

  data += todo;
  addr += (todo >> 1);
  datasize -= todo;
 } while (datasize && rc == 0);

 return rc;
}
