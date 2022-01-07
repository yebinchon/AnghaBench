
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct pxa_i2c {int msg_num; int msg_idx; int wait; int lock; scalar_t__ irqlogidx; scalar_t__ msg_ptr; struct i2c_msg* msg; TYPE_1__ adap; scalar_t__ high_mode; } ;
struct i2c_msg {int dummy; } ;


 int HZ ;
 int I2C_RETRY ;
 int dev_err (int *,char*,...) ;
 int i2c_pxa_scream_blue_murder (struct pxa_i2c*,char*) ;
 int i2c_pxa_send_mastercode (struct pxa_i2c*) ;
 int i2c_pxa_set_master (struct pxa_i2c*) ;
 int i2c_pxa_start_message (struct pxa_i2c*) ;
 int i2c_pxa_stop_message (struct pxa_i2c*) ;
 int i2c_pxa_wait_bus_not_busy (struct pxa_i2c*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 long wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
{
 long timeout;
 int ret;




 ret = i2c_pxa_wait_bus_not_busy(i2c);
 if (ret) {
  dev_err(&i2c->adap.dev, "i2c_pxa: timeout waiting for bus free\n");
  goto out;
 }




 ret = i2c_pxa_set_master(i2c);
 if (ret) {
  dev_err(&i2c->adap.dev, "i2c_pxa_set_master: error %d\n", ret);
  goto out;
 }

 if (i2c->high_mode) {
  ret = i2c_pxa_send_mastercode(i2c);
  if (ret) {
   dev_err(&i2c->adap.dev, "i2c_pxa_send_mastercode timeout\n");
   goto out;
   }
 }

 spin_lock_irq(&i2c->lock);

 i2c->msg = msg;
 i2c->msg_num = num;
 i2c->msg_idx = 0;
 i2c->msg_ptr = 0;
 i2c->irqlogidx = 0;

 i2c_pxa_start_message(i2c);

 spin_unlock_irq(&i2c->lock);




 timeout = wait_event_timeout(i2c->wait, i2c->msg_num == 0, HZ * 5);
 i2c_pxa_stop_message(i2c);




 ret = i2c->msg_idx;

 if (!timeout && i2c->msg_num) {
  i2c_pxa_scream_blue_murder(i2c, "timeout");
  ret = I2C_RETRY;
 }

 out:
 return ret;
}
