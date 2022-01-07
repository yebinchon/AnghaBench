
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos5_i2c {scalar_t__ op_clock; } ;


 scalar_t__ HSI2C_HS_TX_CLOCK ;
 int exynos5_i2c_set_timing (struct exynos5_i2c*,int) ;

__attribute__((used)) static int exynos5_hsi2c_clock_setup(struct exynos5_i2c *i2c)
{

 int ret = exynos5_i2c_set_timing(i2c, 0);

 if (ret < 0 || i2c->op_clock < HSI2C_HS_TX_CLOCK)
  return ret;

 return exynos5_i2c_set_timing(i2c, 1);
}
