
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dw_i2c_dev {int sda_hold_time; int dev; int (* set_sda_hold_time ) (struct dw_i2c_dev*) ;} ;


 int DW_IC_COMP_VERSION ;
 int DW_IC_SDA_HOLD ;
 scalar_t__ DW_IC_SDA_HOLD_MIN_VERS ;
 int DW_IC_SDA_HOLD_RX_MASK ;
 int DW_IC_SDA_HOLD_RX_SHIFT ;
 int dev_dbg (int ,char*,scalar_t__,int) ;
 int dev_warn (int ,char*) ;
 scalar_t__ dw_readl (struct dw_i2c_dev*,int ) ;
 int i2c_dw_acquire_lock (struct dw_i2c_dev*) ;
 int i2c_dw_release_lock (struct dw_i2c_dev*) ;
 int stub1 (struct dw_i2c_dev*) ;

int i2c_dw_set_sda_hold(struct dw_i2c_dev *dev)
{
 u32 reg;
 int ret;

 ret = i2c_dw_acquire_lock(dev);
 if (ret)
  return ret;


 reg = dw_readl(dev, DW_IC_COMP_VERSION);
 if (reg >= DW_IC_SDA_HOLD_MIN_VERS) {
  if (!dev->sda_hold_time) {

   dev->sda_hold_time = dw_readl(dev, DW_IC_SDA_HOLD);
  }
  if (!(dev->sda_hold_time & DW_IC_SDA_HOLD_RX_MASK))
   dev->sda_hold_time |= 1 << DW_IC_SDA_HOLD_RX_SHIFT;

  dev_dbg(dev->dev, "SDA Hold Time TX:RX = %d:%d\n",
   dev->sda_hold_time & ~(u32)DW_IC_SDA_HOLD_RX_MASK,
   dev->sda_hold_time >> DW_IC_SDA_HOLD_RX_SHIFT);
 } else if (dev->set_sda_hold_time) {
  dev->set_sda_hold_time(dev);
 } else if (dev->sda_hold_time) {
  dev_warn(dev->dev,
   "Hardware too old to adjust SDA hold time.\n");
  dev->sda_hold_time = 0;
 }

 i2c_dw_release_lock(dev);

 return 0;
}
