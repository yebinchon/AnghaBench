
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_pl {scalar_t__ mclk; scalar_t__ sclk; scalar_t__ pcie_gen; scalar_t__ vddc; scalar_t__ vddci; } ;



__attribute__((used)) static inline bool si_are_power_levels_equal(const struct rv7xx_pl *si_cpl1,
      const struct rv7xx_pl *si_cpl2)
{
 return ((si_cpl1->mclk == si_cpl2->mclk) &&
    (si_cpl1->sclk == si_cpl2->sclk) &&
    (si_cpl1->pcie_gen == si_cpl2->pcie_gen) &&
    (si_cpl1->vddc == si_cpl2->vddc) &&
    (si_cpl1->vddci == si_cpl2->vddci));
}
