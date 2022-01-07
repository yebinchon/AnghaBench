
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_i2c {int err; int complete; int count; int buf; struct i2c_msg* msg; } ;
struct i2c_msg {int flags; int len; int buf; } ;
struct i2c_adapter {struct sprd_i2c* algo_data; } ;


 int I2C_M_RD ;
 int reinit_completion (int *) ;
 int sprd_i2c_data_transfer (struct sprd_i2c*) ;
 int sprd_i2c_opt_mode (struct sprd_i2c*,int) ;
 int sprd_i2c_opt_start (struct sprd_i2c*) ;
 int sprd_i2c_reset_fifo (struct sprd_i2c*) ;
 int sprd_i2c_send_stop (struct sprd_i2c*,int) ;
 int sprd_i2c_set_count (struct sprd_i2c*,int ) ;
 int sprd_i2c_set_devaddr (struct sprd_i2c*,struct i2c_msg*) ;
 int sprd_i2c_set_fifo_full_int (struct sprd_i2c*,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int sprd_i2c_handle_msg(struct i2c_adapter *i2c_adap,
          struct i2c_msg *msg, bool is_last_msg)
{
 struct sprd_i2c *i2c_dev = i2c_adap->algo_data;

 i2c_dev->msg = msg;
 i2c_dev->buf = msg->buf;
 i2c_dev->count = msg->len;

 reinit_completion(&i2c_dev->complete);
 sprd_i2c_reset_fifo(i2c_dev);
 sprd_i2c_set_devaddr(i2c_dev, msg);
 sprd_i2c_set_count(i2c_dev, msg->len);

 if (msg->flags & I2C_M_RD) {
  sprd_i2c_opt_mode(i2c_dev, 1);
  sprd_i2c_send_stop(i2c_dev, 1);
 } else {
  sprd_i2c_opt_mode(i2c_dev, 0);
  sprd_i2c_send_stop(i2c_dev, !!is_last_msg);
 }





 if (msg->flags & I2C_M_RD)
  sprd_i2c_set_fifo_full_int(i2c_dev, 1);
 else
  sprd_i2c_data_transfer(i2c_dev);

 sprd_i2c_opt_start(i2c_dev);

 wait_for_completion(&i2c_dev->complete);

 return i2c_dev->err;
}
