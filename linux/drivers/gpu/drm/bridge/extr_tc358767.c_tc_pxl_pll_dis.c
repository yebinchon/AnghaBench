
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int regmap; } ;


 int PLLBYP ;
 int PXL_PLLCTRL ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int tc_pxl_pll_dis(struct tc_data *tc)
{

 return regmap_write(tc->regmap, PXL_PLLCTRL, PLLBYP);
}
