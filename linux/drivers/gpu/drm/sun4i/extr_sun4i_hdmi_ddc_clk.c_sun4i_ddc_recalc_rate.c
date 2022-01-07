
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct sun4i_ddc {unsigned long pre_div; unsigned long m_offset; int reg; } ;
struct clk_hw {int dummy; } ;


 struct sun4i_ddc* hw_to_ddc (struct clk_hw*) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static unsigned long sun4i_ddc_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct sun4i_ddc *ddc = hw_to_ddc(hw);
 unsigned int reg;
 u8 m, n;

 regmap_field_read(ddc->reg, &reg);
 m = (reg >> 3) & 0xf;
 n = reg & 0x7;

 return (((parent_rate / ddc->pre_div) / 10) >> n) /
        (m + ddc->m_offset);
}
