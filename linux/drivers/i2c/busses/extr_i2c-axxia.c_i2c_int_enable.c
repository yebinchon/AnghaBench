
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axxia_i2c_dev {scalar_t__ base; } ;


 scalar_t__ MST_INT_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void i2c_int_enable(struct axxia_i2c_dev *idev, u32 mask)
{
 u32 int_en;

 int_en = readl(idev->base + MST_INT_ENABLE);
 writel(int_en | mask, idev->base + MST_INT_ENABLE);
}
