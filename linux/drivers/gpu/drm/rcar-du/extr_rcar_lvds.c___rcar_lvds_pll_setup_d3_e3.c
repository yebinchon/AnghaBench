
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int extal; int * dotclkin; } ;
struct rcar_lvds {TYPE_1__ clocks; } ;
struct pll_info {unsigned long diff; int clksel; scalar_t__ pll_e; int div; scalar_t__ pll_m; scalar_t__ pll_n; } ;


 int LVDDIV ;
 int LVDDIV_DIV (int) ;
 int LVDDIV_DIVRESET ;
 int LVDDIV_DIVSEL ;
 int LVDPLLCR ;
 int LVDPLLCR_CKSEL_DU_DOTCLKIN (int) ;
 int LVDPLLCR_CKSEL_EXTAL ;
 int LVDPLLCR_CLKOUT ;
 int LVDPLLCR_OCKSEL ;
 int LVDPLLCR_OUTCLKSEL ;
 int LVDPLLCR_PLLE (scalar_t__) ;
 int LVDPLLCR_PLLM (scalar_t__) ;
 int LVDPLLCR_PLLN (scalar_t__) ;
 int LVDPLLCR_PLLON ;
 int LVDPLLCR_STP_CLKOUTE ;
 int rcar_lvds_d3_e3_pll_calc (struct rcar_lvds*,int ,unsigned int,struct pll_info*,int ,int) ;
 int rcar_lvds_write (struct rcar_lvds*,int ,int) ;

__attribute__((used)) static void __rcar_lvds_pll_setup_d3_e3(struct rcar_lvds *lvds,
     unsigned int freq, bool dot_clock_only)
{
 struct pll_info pll = { .diff = (unsigned long)-1 };
 u32 lvdpllcr;

 rcar_lvds_d3_e3_pll_calc(lvds, lvds->clocks.dotclkin[0], freq, &pll,
     LVDPLLCR_CKSEL_DU_DOTCLKIN(0), dot_clock_only);
 rcar_lvds_d3_e3_pll_calc(lvds, lvds->clocks.dotclkin[1], freq, &pll,
     LVDPLLCR_CKSEL_DU_DOTCLKIN(1), dot_clock_only);
 rcar_lvds_d3_e3_pll_calc(lvds, lvds->clocks.extal, freq, &pll,
     LVDPLLCR_CKSEL_EXTAL, dot_clock_only);

 lvdpllcr = LVDPLLCR_PLLON | pll.clksel | LVDPLLCR_CLKOUT
   | LVDPLLCR_PLLN(pll.pll_n - 1) | LVDPLLCR_PLLM(pll.pll_m - 1);

 if (pll.pll_e > 0)
  lvdpllcr |= LVDPLLCR_STP_CLKOUTE | LVDPLLCR_OUTCLKSEL
    | LVDPLLCR_PLLE(pll.pll_e - 1);

 if (dot_clock_only)
  lvdpllcr |= LVDPLLCR_OCKSEL;

 rcar_lvds_write(lvds, LVDPLLCR, lvdpllcr);

 if (pll.div > 1)




  rcar_lvds_write(lvds, LVDDIV, LVDDIV_DIVSEL |
    LVDDIV_DIVRESET | LVDDIV_DIV(pll.div - 1));
 else
  rcar_lvds_write(lvds, LVDDIV, 0);
}
