
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; int buf; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct dln2_i2c {int dummy; } ;


 int EPROTO ;
 int I2C_M_RD ;
 int dln2_i2c_read (struct dln2_i2c*,int ,int ,int) ;
 int dln2_i2c_write (struct dln2_i2c*,int ,int ,int) ;
 struct dln2_i2c* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int dln2_i2c_xfer(struct i2c_adapter *adapter,
    struct i2c_msg *msgs, int num)
{
 struct dln2_i2c *dln2 = i2c_get_adapdata(adapter);
 struct i2c_msg *pmsg;
 int i;

 for (i = 0; i < num; i++) {
  int ret;

  pmsg = &msgs[i];

  if (pmsg->flags & I2C_M_RD) {
   ret = dln2_i2c_read(dln2, pmsg->addr, pmsg->buf,
         pmsg->len);
   if (ret < 0)
    return ret;

   pmsg->len = ret;
  } else {
   ret = dln2_i2c_write(dln2, pmsg->addr, pmsg->buf,
          pmsg->len);
   if (ret != pmsg->len)
    return -EPROTO;
  }
 }

 return num;
}
