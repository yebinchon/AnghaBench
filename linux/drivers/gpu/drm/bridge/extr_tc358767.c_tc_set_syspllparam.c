
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_data {int regmap; int dev; int refclk; } ;


 int EINVAL ;
 int LSCLK_DIV_2 ;
 int REF_FREQ_13M ;
 int REF_FREQ_19M2 ;
 int REF_FREQ_26M ;
 int REF_FREQ_38M4 ;
 int SYSCLK_SEL_LSCLK ;
 int SYS_PLLPARAM ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*,unsigned long) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int tc_set_syspllparam(struct tc_data *tc)
{
 unsigned long rate;
 u32 pllparam = SYSCLK_SEL_LSCLK | LSCLK_DIV_2;

 rate = clk_get_rate(tc->refclk);
 switch (rate) {
 case 38400000:
  pllparam |= REF_FREQ_38M4;
  break;
 case 26000000:
  pllparam |= REF_FREQ_26M;
  break;
 case 19200000:
  pllparam |= REF_FREQ_19M2;
  break;
 case 13000000:
  pllparam |= REF_FREQ_13M;
  break;
 default:
  dev_err(tc->dev, "Invalid refclk rate: %lu Hz\n", rate);
  return -EINVAL;
 }

 return regmap_write(tc->regmap, SYS_PLLPARAM, pllparam);
}
