
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lpc2k_i2c {int is_last; int msg_status; scalar_t__ msg_idx; struct i2c_msg* msg; scalar_t__ base; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int EBUSY ;
 scalar_t__ LPC24XX_I2STAT ;
 scalar_t__ M_I2C_IDLE ;
 struct lpc2k_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int i2c_lpc2k_clear_arb (struct lpc2k_i2c*) ;
 int lpc2k_process_msg (struct lpc2k_i2c*,int) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static int i2c_lpc2k_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
     int msg_num)
{
 struct lpc2k_i2c *i2c = i2c_get_adapdata(adap);
 int ret, i;
 u32 stat;


 stat = readl(i2c->base + LPC24XX_I2STAT);
 if (stat != M_I2C_IDLE) {

  return i2c_lpc2k_clear_arb(i2c);
 }


 for (i = 0; i < msg_num; i++) {

  i2c->msg = &msgs[i];
  i2c->msg_idx = 0;
  i2c->msg_status = -EBUSY;
  i2c->is_last = (i == (msg_num - 1));

  ret = lpc2k_process_msg(i2c, i);
  if (ret)
   return ret;
 }

 return msg_num;
}
