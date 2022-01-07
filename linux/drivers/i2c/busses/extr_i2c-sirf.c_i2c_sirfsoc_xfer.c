
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_i2c {int msg_read; int last; int clk; scalar_t__ finished_len; scalar_t__ cmd_ptr; scalar_t__ err_status; int msg_len; int buf; } ;
struct i2c_msg {int flags; int len; int buf; } ;
struct i2c_adapter {struct sirfsoc_i2c* algo_data; } ;


 int I2C_M_RD ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int i2c_sirfsoc_xfer_msg (struct sirfsoc_i2c*,struct i2c_msg*) ;

__attribute__((used)) static int i2c_sirfsoc_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 int num)
{
 struct sirfsoc_i2c *siic = adap->algo_data;
 int i, ret;

 clk_enable(siic->clk);

 for (i = 0; i < num; i++) {
  siic->buf = msgs[i].buf;
  siic->msg_len = msgs[i].len;
  siic->msg_read = !!(msgs[i].flags & I2C_M_RD);
  siic->err_status = 0;
  siic->cmd_ptr = 0;
  siic->finished_len = 0;
  siic->last = (i == (num - 1));

  ret = i2c_sirfsoc_xfer_msg(siic, &msgs[i]);
  if (ret) {
   clk_disable(siic->clk);
   return ret;
  }
 }

 clk_disable(siic->clk);
 return num;
}
