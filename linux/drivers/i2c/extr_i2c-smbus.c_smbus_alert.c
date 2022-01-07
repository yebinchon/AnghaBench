
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_smbus_alert {struct i2c_client* ara; } ;
struct i2c_client {TYPE_1__* adapter; int dev; } ;
struct alert_data {int data; int addr; int type; } ;
typedef int s32 ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int I2C_PROTOCOL_SMBUS_ALERT ;
 int IRQ_HANDLED ;
 int dev_dbg (int *,char*,unsigned short,int) ;
 int dev_warn (int *,char*,unsigned short) ;
 int device_for_each_child (int *,struct alert_data*,int ) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int smbus_do_alert ;

__attribute__((used)) static irqreturn_t smbus_alert(int irq, void *d)
{
 struct i2c_smbus_alert *alert = d;
 struct i2c_client *ara;
 unsigned short prev_addr = 0;

 ara = alert->ara;

 for (;;) {
  s32 status;
  struct alert_data data;
  status = i2c_smbus_read_byte(ara);
  if (status < 0)
   break;

  data.data = status & 1;
  data.addr = status >> 1;
  data.type = I2C_PROTOCOL_SMBUS_ALERT;

  if (data.addr == prev_addr) {
   dev_warn(&ara->dev, "Duplicate SMBALERT# from dev "
    "0x%02x, skipping\n", data.addr);
   break;
  }
  dev_dbg(&ara->dev, "SMBALERT# from dev 0x%02x, flag %d\n",
   data.addr, data.data);


  device_for_each_child(&ara->adapter->dev, &data,
          smbus_do_alert);
  prev_addr = data.addr;
 }

 return IRQ_HANDLED;
}
