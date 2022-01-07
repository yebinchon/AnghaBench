
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_i2c {scalar_t__ base; } ;


 int EMPTY_INTEN ;
 scalar_t__ I2C_CTL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sprd_i2c_set_fifo_empty_int(struct sprd_i2c *i2c_dev, int enable)
{
 u32 tmp = readl(i2c_dev->base + I2C_CTL);

 if (enable)
  tmp |= EMPTY_INTEN;
 else
  tmp &= ~EMPTY_INTEN;

 writel(tmp, i2c_dev->base + I2C_CTL);
}
