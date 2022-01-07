
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned long hdisplay; unsigned long vdisplay; int pll2_config_value; int pll1_config_value; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CRT_PLL1_HS_25MHZ ;
 int CRT_PLL2_HS_25MHZ ;
 TYPE_1__* hibmc_pll_table ;

__attribute__((used)) static void get_pll_config(unsigned long x, unsigned long y,
      u32 *pll1, u32 *pll2)
{
 int i;
 int count = ARRAY_SIZE(hibmc_pll_table);

 for (i = 0; i < count; i++) {
  if (hibmc_pll_table[i].hdisplay == x &&
      hibmc_pll_table[i].vdisplay == y) {
   *pll1 = hibmc_pll_table[i].pll1_config_value;
   *pll2 = hibmc_pll_table[i].pll2_config_value;
   return;
  }
 }


 *pll1 = CRT_PLL1_HS_25MHZ;
 *pll2 = CRT_PLL2_HS_25MHZ;
}
