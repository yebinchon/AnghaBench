
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int buffer; int slave_adr; } ;
struct nmk_i2c_dev {int stop; TYPE_2__* adev; scalar_t__ result; TYPE_1__ cli; } ;
struct i2c_msg {int flags; int len; int buf; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 struct nmk_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int nmk_i2c_xfer_one (struct nmk_i2c_dev*,int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int setup_i2c_controller (struct nmk_i2c_dev*) ;

__attribute__((used)) static int nmk_i2c_xfer(struct i2c_adapter *i2c_adap,
  struct i2c_msg msgs[], int num_msgs)
{
 int status = 0;
 int i;
 struct nmk_i2c_dev *dev = i2c_get_adapdata(i2c_adap);
 int j;

 pm_runtime_get_sync(&dev->adev->dev);


 for (j = 0; j < 3; j++) {

  setup_i2c_controller(dev);

  for (i = 0; i < num_msgs; i++) {
   dev->cli.slave_adr = msgs[i].addr;
   dev->cli.buffer = msgs[i].buf;
   dev->cli.count = msgs[i].len;
   dev->stop = (i < (num_msgs - 1)) ? 0 : 1;
   dev->result = 0;

   status = nmk_i2c_xfer_one(dev, msgs[i].flags);
   if (status != 0)
    break;
  }
  if (status == 0)
   break;
 }

 pm_runtime_put_sync(&dev->adev->dev);


 if (status)
  return status;
 else
  return num_msgs;
}
