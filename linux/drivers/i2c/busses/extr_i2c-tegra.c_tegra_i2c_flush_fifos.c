
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_i2c_dev {int dev; TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__ has_mst_fifo; } ;


 int ETIMEDOUT ;
 unsigned long HZ ;
 unsigned int I2C_FIFO_CONTROL ;
 int I2C_FIFO_CONTROL_RX_FLUSH ;
 int I2C_FIFO_CONTROL_TX_FLUSH ;
 unsigned int I2C_MST_FIFO_CONTROL ;
 int I2C_MST_FIFO_CONTROL_RX_FLUSH ;
 int I2C_MST_FIFO_CONTROL_TX_FLUSH ;
 int dev_warn (int ,char*) ;
 int i2c_readl (struct tegra_i2c_dev*,unsigned int) ;
 int i2c_writel (struct tegra_i2c_dev*,int,unsigned int) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_i2c_flush_fifos(struct tegra_i2c_dev *i2c_dev)
{
 unsigned long timeout = jiffies + HZ;
 unsigned int offset;
 u32 mask, val;

 if (i2c_dev->hw->has_mst_fifo) {
  mask = I2C_MST_FIFO_CONTROL_TX_FLUSH |
         I2C_MST_FIFO_CONTROL_RX_FLUSH;
  offset = I2C_MST_FIFO_CONTROL;
 } else {
  mask = I2C_FIFO_CONTROL_TX_FLUSH |
         I2C_FIFO_CONTROL_RX_FLUSH;
  offset = I2C_FIFO_CONTROL;
 }

 val = i2c_readl(i2c_dev, offset);
 val |= mask;
 i2c_writel(i2c_dev, val, offset);

 while (i2c_readl(i2c_dev, offset) & mask) {
  if (time_after(jiffies, timeout)) {
   dev_warn(i2c_dev->dev, "timeout waiting for fifo flush\n");
   return -ETIMEDOUT;
  }
  usleep_range(1000, 2000);
 }
 return 0;
}
