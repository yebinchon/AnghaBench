
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct i2c_adapter {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_M_RD ;
 int dprintk (char*) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;

__attribute__((used)) static int dib7000pc_detection(struct i2c_adapter *i2c_adap)
{
 u8 *tx, *rx;
 struct i2c_msg msg[2] = {
  {.addr = 18 >> 1, .flags = 0, .len = 2},
  {.addr = 18 >> 1, .flags = I2C_M_RD, .len = 2},
 };
 int ret = 0;

 tx = kzalloc(2, GFP_KERNEL);
 if (!tx)
  return -ENOMEM;
 rx = kzalloc(2, GFP_KERNEL);
 if (!rx) {
  ret = -ENOMEM;
  goto rx_memory_error;
 }

 msg[0].buf = tx;
 msg[1].buf = rx;

 tx[0] = 0x03;
 tx[1] = 0x00;

 if (i2c_transfer(i2c_adap, msg, 2) == 2)
  if (rx[0] == 0x01 && rx[1] == 0xb3) {
   dprintk("-D-  DiB7000PC detected\n");
   ret = 1;
   goto out;
  }

 msg[0].addr = msg[1].addr = 0x40;

 if (i2c_transfer(i2c_adap, msg, 2) == 2)
  if (rx[0] == 0x01 && rx[1] == 0xb3) {
   dprintk("-D-  DiB7000PC detected\n");
   ret = 1;
   goto out;
  }

 dprintk("-D-  DiB7000PC not detected\n");

out:
 kfree(rx);
rx_memory_error:
 kfree(tx);
 return ret;
}
