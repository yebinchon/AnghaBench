
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sun4i_ddc {int reg; int m_offset; int pre_div; } ;
struct clk_hw {int dummy; } ;


 int SUN4I_HDMI_DDC_CLK_M (int ) ;
 int SUN4I_HDMI_DDC_CLK_N (int ) ;
 struct sun4i_ddc* hw_to_ddc (struct clk_hw*) ;
 int regmap_field_write (int ,int) ;
 int sun4i_ddc_calc_divider (unsigned long,unsigned long,int ,int ,int *,int *) ;

__attribute__((used)) static int sun4i_ddc_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct sun4i_ddc *ddc = hw_to_ddc(hw);
 u8 div_m, div_n;

 sun4i_ddc_calc_divider(rate, parent_rate, ddc->pre_div,
          ddc->m_offset, &div_m, &div_n);

 regmap_field_write(ddc->reg,
      SUN4I_HDMI_DDC_CLK_M(div_m) |
      SUN4I_HDMI_DDC_CLK_N(div_n));

 return 0;
}
