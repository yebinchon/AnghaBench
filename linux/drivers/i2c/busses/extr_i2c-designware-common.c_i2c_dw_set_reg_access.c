
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_i2c_dev {int dev; int flags; } ;


 int ACCESS_16BIT ;
 int ACCESS_SWAP ;
 int DW_IC_COMP_TYPE ;
 int DW_IC_COMP_TYPE_VALUE ;
 int ENODEV ;
 int dev_err (int ,char*,int) ;
 int dw_readl (struct dw_i2c_dev*,int ) ;
 int i2c_dw_acquire_lock (struct dw_i2c_dev*) ;
 int i2c_dw_release_lock (struct dw_i2c_dev*) ;
 int swab32 (int) ;

int i2c_dw_set_reg_access(struct dw_i2c_dev *dev)
{
 u32 reg;
 int ret;

 ret = i2c_dw_acquire_lock(dev);
 if (ret)
  return ret;

 reg = dw_readl(dev, DW_IC_COMP_TYPE);
 i2c_dw_release_lock(dev);

 if (reg == swab32(DW_IC_COMP_TYPE_VALUE)) {

  dev->flags |= ACCESS_SWAP;
 } else if (reg == (DW_IC_COMP_TYPE_VALUE & 0x0000ffff)) {

  dev->flags |= ACCESS_16BIT;
 } else if (reg != DW_IC_COMP_TYPE_VALUE) {
  dev_err(dev->dev,
   "Unknown Synopsys component type: 0x%08x\n", reg);
  return -ENODEV;
 }

 return 0;
}
