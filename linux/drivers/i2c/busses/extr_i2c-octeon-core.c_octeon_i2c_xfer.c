
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {int dummy; } ;
struct i2c_msg {int len; int flags; scalar_t__ addr; int buf; } ;
struct i2c_adapter {int dummy; } ;


 int EOPNOTSUPP ;
 int I2C_M_RD ;
 int I2C_M_RECV_LEN ;
 struct octeon_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int octeon_i2c_hlc_comp_read (struct octeon_i2c*,struct i2c_msg*) ;
 int octeon_i2c_hlc_comp_write (struct octeon_i2c*,struct i2c_msg*) ;
 int octeon_i2c_hlc_read (struct octeon_i2c*,struct i2c_msg*) ;
 int octeon_i2c_hlc_write (struct octeon_i2c*,struct i2c_msg*) ;
 int octeon_i2c_read (struct octeon_i2c*,scalar_t__,int ,int*,int) ;
 int octeon_i2c_start (struct octeon_i2c*) ;
 int octeon_i2c_stop (struct octeon_i2c*) ;
 int octeon_i2c_write (struct octeon_i2c*,scalar_t__,int ,int) ;

int octeon_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 struct octeon_i2c *i2c = i2c_get_adapdata(adap);
 int i, ret = 0;

 if (num == 1) {
  if (msgs[0].len > 0 && msgs[0].len <= 8) {
   if (msgs[0].flags & I2C_M_RD)
    ret = octeon_i2c_hlc_read(i2c, msgs);
   else
    ret = octeon_i2c_hlc_write(i2c, msgs);
   goto out;
  }
 } else if (num == 2) {
  if ((msgs[0].flags & I2C_M_RD) == 0 &&
      (msgs[1].flags & I2C_M_RECV_LEN) == 0 &&
      msgs[0].len > 0 && msgs[0].len <= 2 &&
      msgs[1].len > 0 && msgs[1].len <= 8 &&
      msgs[0].addr == msgs[1].addr) {
   if (msgs[1].flags & I2C_M_RD)
    ret = octeon_i2c_hlc_comp_read(i2c, msgs);
   else
    ret = octeon_i2c_hlc_comp_write(i2c, msgs);
   goto out;
  }
 }

 for (i = 0; ret == 0 && i < num; i++) {
  struct i2c_msg *pmsg = &msgs[i];


  if (!pmsg->len) {
   ret = -EOPNOTSUPP;
   break;
  }

  ret = octeon_i2c_start(i2c);
  if (ret)
   return ret;

  if (pmsg->flags & I2C_M_RD)
   ret = octeon_i2c_read(i2c, pmsg->addr, pmsg->buf,
           &pmsg->len, pmsg->flags & I2C_M_RECV_LEN);
  else
   ret = octeon_i2c_write(i2c, pmsg->addr, pmsg->buf,
            pmsg->len);
 }
 octeon_i2c_stop(i2c);
out:
 return (ret != 0) ? ret : num;
}
