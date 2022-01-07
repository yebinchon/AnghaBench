
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_ddc {int m_offset; int pre_div; } ;
struct clk_hw {int dummy; } ;


 struct sun4i_ddc* hw_to_ddc (struct clk_hw*) ;
 long sun4i_ddc_calc_divider (unsigned long,unsigned long,int ,int ,int *,int *) ;

__attribute__((used)) static long sun4i_ddc_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *prate)
{
 struct sun4i_ddc *ddc = hw_to_ddc(hw);

 return sun4i_ddc_calc_divider(rate, *prate, ddc->pre_div,
          ddc->m_offset, ((void*)0), ((void*)0));
}
