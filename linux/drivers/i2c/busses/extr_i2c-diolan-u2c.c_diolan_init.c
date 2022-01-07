
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_diolan_u2c {TYPE_3__* usb_dev; TYPE_1__* interface; } ;
struct TYPE_6__ {int devnum; TYPE_2__* bus; } ;
struct TYPE_5__ {int busnum; } ;
struct TYPE_4__ {int dev; } ;


 int DIOLAN_SYNC_TIMEOUT ;
 int U2C_I2C_FREQ (int) ;
 int U2C_I2C_FREQ_FAST ;
 int U2C_I2C_FREQ_STD ;
 int U2C_I2C_SPEED (int) ;
 int U2C_I2C_SPEED_2KHZ ;
 int U2C_I2C_SPEED_FAST ;
 int U2C_I2C_SPEED_STD ;
 int dev_info (int *,char*,int ,int ,int) ;
 int diolan_flush_input (struct i2c_diolan_u2c*) ;
 int diolan_fw_version (struct i2c_diolan_u2c*) ;
 int diolan_get_serial (struct i2c_diolan_u2c*) ;
 int diolan_set_clock_synch (struct i2c_diolan_u2c*,int) ;
 int diolan_set_clock_synch_timeout (struct i2c_diolan_u2c*,int ) ;
 int diolan_set_speed (struct i2c_diolan_u2c*,int) ;
 int frequency ;

__attribute__((used)) static int diolan_init(struct i2c_diolan_u2c *dev)
{
 int speed, ret;

 if (frequency >= 200000) {
  speed = U2C_I2C_SPEED_FAST;
  frequency = U2C_I2C_FREQ_FAST;
 } else if (frequency >= 100000 || frequency == 0) {
  speed = U2C_I2C_SPEED_STD;
  frequency = U2C_I2C_FREQ_STD;
 } else {
  speed = U2C_I2C_SPEED(frequency);
  if (speed > U2C_I2C_SPEED_2KHZ)
   speed = U2C_I2C_SPEED_2KHZ;
  frequency = U2C_I2C_FREQ(speed);
 }

 dev_info(&dev->interface->dev,
   "Diolan U2C at USB bus %03d address %03d speed %d Hz\n",
   dev->usb_dev->bus->busnum, dev->usb_dev->devnum, frequency);

 diolan_flush_input(dev);
 diolan_fw_version(dev);
 diolan_get_serial(dev);


 ret = diolan_set_speed(dev, speed);
 if (ret < 0)
  return ret;


 ret = diolan_set_clock_synch(dev, speed != U2C_I2C_SPEED_FAST);
 if (ret < 0)
  return ret;

 if (speed != U2C_I2C_SPEED_FAST)
  ret = diolan_set_clock_synch_timeout(dev, DIOLAN_SYNC_TIMEOUT);

 return ret;
}
