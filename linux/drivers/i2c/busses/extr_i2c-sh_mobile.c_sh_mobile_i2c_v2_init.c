
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {unsigned long bus_speed; int clks_per_count; void* icch; void* iccl; int clk; } ;


 void* DIV_ROUND_UP (unsigned long,int ) ;
 unsigned long clk_get_rate (int ) ;
 int sh_mobile_i2c_check_timing (struct sh_mobile_i2c_data*) ;

__attribute__((used)) static int sh_mobile_i2c_v2_init(struct sh_mobile_i2c_data *pd)
{
 unsigned long clks_per_cycle;


 clks_per_cycle = clk_get_rate(pd->clk) / pd->bus_speed;
 pd->iccl = DIV_ROUND_UP(clks_per_cycle * 5 / 9 - 1, pd->clks_per_count);
 pd->icch = DIV_ROUND_UP(clks_per_cycle * 4 / 9 - 5, pd->clks_per_count);

 return sh_mobile_i2c_check_timing(pd);
}
