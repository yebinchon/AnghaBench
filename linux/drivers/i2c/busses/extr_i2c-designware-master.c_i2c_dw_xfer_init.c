
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int flags; int addr; } ;
struct dw_i2c_dev {size_t msg_write_idx; struct i2c_msg* msgs; } ;


 int DW_IC_CLR_INTR ;
 int DW_IC_CON ;
 int DW_IC_CON_10BITADDR_MASTER ;
 int DW_IC_ENABLE_STATUS ;
 int DW_IC_INTR_MASK ;
 int DW_IC_INTR_MASTER_MASK ;
 int DW_IC_TAR ;
 int DW_IC_TAR_10BITADDR_MASTER ;
 int I2C_M_TEN ;
 int __i2c_dw_disable (struct dw_i2c_dev*) ;
 int __i2c_dw_enable (struct dw_i2c_dev*) ;
 int dw_readl (struct dw_i2c_dev*,int ) ;
 int dw_writel (struct dw_i2c_dev*,int,int ) ;
 int i2c_dw_disable_int (struct dw_i2c_dev*) ;

__attribute__((used)) static void i2c_dw_xfer_init(struct dw_i2c_dev *dev)
{
 struct i2c_msg *msgs = dev->msgs;
 u32 ic_con, ic_tar = 0;


 __i2c_dw_disable(dev);


 ic_con = dw_readl(dev, DW_IC_CON);
 if (msgs[dev->msg_write_idx].flags & I2C_M_TEN) {
  ic_con |= DW_IC_CON_10BITADDR_MASTER;






  ic_tar = DW_IC_TAR_10BITADDR_MASTER;
 } else {
  ic_con &= ~DW_IC_CON_10BITADDR_MASTER;
 }

 dw_writel(dev, ic_con, DW_IC_CON);





 dw_writel(dev, msgs[dev->msg_write_idx].addr | ic_tar, DW_IC_TAR);


 i2c_dw_disable_int(dev);


 __i2c_dw_enable(dev);


 dw_readl(dev, DW_IC_ENABLE_STATUS);


 dw_readl(dev, DW_IC_CLR_INTR);
 dw_writel(dev, DW_IC_INTR_MASTER_MASK, DW_IC_INTR_MASK);
}
