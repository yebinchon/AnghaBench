
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 long DIV_ROUND_UP (unsigned long,int ) ;
 int clk_bcm2835_i2c_calc_divider (unsigned long,unsigned long) ;

__attribute__((used)) static long clk_bcm2835_i2c_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *parent_rate)
{
 u32 divider = clk_bcm2835_i2c_calc_divider(rate, *parent_rate);

 return DIV_ROUND_UP(*parent_rate, divider);
}
