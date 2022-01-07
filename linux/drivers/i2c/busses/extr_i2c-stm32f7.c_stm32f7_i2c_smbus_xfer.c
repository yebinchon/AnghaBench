
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int byte; int word; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct stm32f7_i2c_msg {int size; char read_write; int smbus; int result; int* smbus_buf; int addr; } ;
struct TYPE_2__ {int timeout; } ;
struct stm32f7_i2c_dev {scalar_t__ use_dma; TYPE_1__ adap; int complete; struct device* dev; struct stm32_i2c_dma* dma; struct stm32f7_i2c_msg f7_msg; } ;
struct stm32_i2c_dma {int chan_using; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 unsigned short I2C_CLIENT_PEC ;





 int I2C_SMBUS_QUICK ;

 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*) ;
 int dmaengine_terminate_all (int ) ;
 struct stm32f7_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int stm32f7_i2c_smbus_check_pec (struct stm32f7_i2c_dev*) ;
 int stm32f7_i2c_smbus_xfer_msg (struct stm32f7_i2c_dev*,unsigned short,int ,union i2c_smbus_data*) ;
 int stm32f7_i2c_wait_free_bus (struct stm32f7_i2c_dev*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int stm32f7_i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
      unsigned short flags, char read_write,
      u8 command, int size,
      union i2c_smbus_data *data)
{
 struct stm32f7_i2c_dev *i2c_dev = i2c_get_adapdata(adapter);
 struct stm32f7_i2c_msg *f7_msg = &i2c_dev->f7_msg;
 struct stm32_i2c_dma *dma = i2c_dev->dma;
 struct device *dev = i2c_dev->dev;
 unsigned long timeout;
 int i, ret;

 f7_msg->addr = addr;
 f7_msg->size = size;
 f7_msg->read_write = read_write;
 f7_msg->smbus = 1;

 ret = pm_runtime_get_sync(dev);
 if (ret < 0)
  return ret;

 ret = stm32f7_i2c_wait_free_bus(i2c_dev);
 if (ret)
  goto pm_free;

 ret = stm32f7_i2c_smbus_xfer_msg(i2c_dev, flags, command, data);
 if (ret)
  goto pm_free;

 timeout = wait_for_completion_timeout(&i2c_dev->complete,
           i2c_dev->adap.timeout);
 ret = f7_msg->result;
 if (ret)
  goto pm_free;

 if (!timeout) {
  dev_dbg(dev, "Access to slave 0x%x timed out\n", f7_msg->addr);
  if (i2c_dev->use_dma)
   dmaengine_terminate_all(dma->chan_using);
  ret = -ETIMEDOUT;
  goto pm_free;
 }


 if ((flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && read_write) {
  ret = stm32f7_i2c_smbus_check_pec(i2c_dev);
  if (ret)
   goto pm_free;
 }

 if (read_write && size != I2C_SMBUS_QUICK) {
  switch (size) {
  case 131:
  case 130:
   data->byte = f7_msg->smbus_buf[0];
  break;
  case 128:
  case 129:
   data->word = f7_msg->smbus_buf[0] |
    (f7_msg->smbus_buf[1] << 8);
  break;
  case 133:
  case 132:
  for (i = 0; i <= f7_msg->smbus_buf[0]; i++)
   data->block[i] = f7_msg->smbus_buf[i];
  break;
  default:
   dev_err(dev, "Unsupported smbus transaction\n");
   ret = -EINVAL;
  }
 }

pm_free:
 pm_runtime_mark_last_busy(dev);
 pm_runtime_put_autosuspend(dev);
 return ret;
}
