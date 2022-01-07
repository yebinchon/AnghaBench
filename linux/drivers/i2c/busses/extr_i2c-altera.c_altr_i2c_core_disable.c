
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altr_i2c_dev {scalar_t__ base; } ;


 scalar_t__ ALTR_I2C_CTRL ;
 int ALTR_I2C_CTRL_EN ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void altr_i2c_core_disable(struct altr_i2c_dev *idev)
{
 u32 tmp = readl(idev->base + ALTR_I2C_CTRL);

 writel(tmp & ~ALTR_I2C_CTRL_EN, idev->base + ALTR_I2C_CTRL);
}
