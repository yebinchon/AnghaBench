
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_msg {int flags; } ;
struct TYPE_2__ {int parent; } ;
struct i2c_adapter {TYPE_1__ dev; struct cdns_i2c* algo_data; } ;
struct cdns_i2c {int quirks; int bus_hold_flag; int err_status; int dev; } ;


 int CDNS_I2C_BROKEN_HOLD_BIT ;
 int CDNS_I2C_CR_HOLD ;
 int CDNS_I2C_CR_OFFSET ;
 int CDNS_I2C_IXR_NACK ;
 int CDNS_I2C_SR_BA ;
 int CDNS_I2C_SR_OFFSET ;
 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int I2C_M_RD ;
 int cdns_i2c_master_reset (struct i2c_adapter*) ;
 int cdns_i2c_process_msg (struct cdns_i2c*,struct i2c_msg*,struct i2c_adapter*) ;
 int cdns_i2c_readreg (int ) ;
 int cdns_i2c_writereg (int,int ) ;
 int dev_warn (int ,char*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int cdns_i2c_master_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
    int num)
{
 int ret, count;
 u32 reg;
 struct cdns_i2c *id = adap->algo_data;
 bool hold_quirk;

 ret = pm_runtime_get_sync(id->dev);
 if (ret < 0)
  return ret;

 if (cdns_i2c_readreg(CDNS_I2C_SR_OFFSET) & CDNS_I2C_SR_BA) {
  ret = -EAGAIN;
  goto out;
 }

 hold_quirk = !!(id->quirks & CDNS_I2C_BROKEN_HOLD_BIT);




 if (num > 1) {







  for (count = 0; (count < num - 1 && hold_quirk); count++) {
   if (msgs[count].flags & I2C_M_RD) {
    dev_warn(adap->dev.parent,
      "Can't do repeated start after a receive message\n");
    ret = -EOPNOTSUPP;
    goto out;
   }
  }
  id->bus_hold_flag = 1;
  reg = cdns_i2c_readreg(CDNS_I2C_CR_OFFSET);
  reg |= CDNS_I2C_CR_HOLD;
  cdns_i2c_writereg(reg, CDNS_I2C_CR_OFFSET);
 } else {
  id->bus_hold_flag = 0;
 }


 for (count = 0; count < num; count++, msgs++) {
  if (count == (num - 1))
   id->bus_hold_flag = 0;

  ret = cdns_i2c_process_msg(id, msgs, adap);
  if (ret)
   goto out;


  if (id->err_status) {
   cdns_i2c_master_reset(adap);

   if (id->err_status & CDNS_I2C_IXR_NACK) {
    ret = -ENXIO;
    goto out;
   }
   ret = -EIO;
   goto out;
  }
 }

 ret = num;
out:
 pm_runtime_mark_last_busy(id->dev);
 pm_runtime_put_autosuspend(id->dev);
 return ret;
}
