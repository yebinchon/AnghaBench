
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_plat_data {int dummy; } ;


 int exynos_dp_crtc_clock_enable (struct analogix_dp_plat_data*,int) ;

__attribute__((used)) static int exynos_dp_poweron(struct analogix_dp_plat_data *plat_data)
{
 return exynos_dp_crtc_clock_enable(plat_data, 1);
}
