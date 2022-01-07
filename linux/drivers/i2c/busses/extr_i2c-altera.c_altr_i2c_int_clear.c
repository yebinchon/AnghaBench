
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altr_i2c_dev {scalar_t__ base; } ;


 scalar_t__ ALTR_I2C_ISR ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void altr_i2c_int_clear(struct altr_i2c_dev *idev, u32 mask)
{
 u32 int_en = readl(idev->base + ALTR_I2C_ISR);

 writel(int_en | mask, idev->base + ALTR_I2C_ISR);
}
