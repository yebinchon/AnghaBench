
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_dp_device {int pclk; } ;
struct analogix_dp_plat_data {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct rockchip_dp_device* to_dp (struct analogix_dp_plat_data*) ;

__attribute__((used)) static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
{
 struct rockchip_dp_device *dp = to_dp(plat_data);

 clk_disable_unprepare(dp->pclk);

 return 0;
}
