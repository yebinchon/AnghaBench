
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_mipi {TYPE_1__* soc; int clk; } ;
struct TYPE_2__ {scalar_t__ needs_vclamp_ref; } ;


 int MIPI_CAL_BIAS_PAD_CFG0 ;
 int MIPI_CAL_BIAS_PAD_CFG2 ;
 int MIPI_CAL_BIAS_PAD_E_VCLAMP_REF ;
 int MIPI_CAL_BIAS_PAD_PDVCLAMP ;
 int MIPI_CAL_BIAS_PAD_PDVREG ;
 int clk_enable (int ) ;
 int tegra_mipi_readl (struct tegra_mipi*,int ) ;
 int tegra_mipi_writel (struct tegra_mipi*,int ,int ) ;

__attribute__((used)) static int tegra_mipi_power_down(struct tegra_mipi *mipi)
{
 u32 value;
 int err;

 err = clk_enable(mipi->clk);
 if (err < 0)
  return err;






 value = tegra_mipi_readl(mipi, MIPI_CAL_BIAS_PAD_CFG2);
 value |= MIPI_CAL_BIAS_PAD_PDVREG;
 tegra_mipi_writel(mipi, value, MIPI_CAL_BIAS_PAD_CFG2);







 value = tegra_mipi_readl(mipi, MIPI_CAL_BIAS_PAD_CFG0);

 if (mipi->soc->needs_vclamp_ref)
  value &= ~MIPI_CAL_BIAS_PAD_E_VCLAMP_REF;

 value |= MIPI_CAL_BIAS_PAD_PDVCLAMP;
 tegra_mipi_writel(mipi, value, MIPI_CAL_BIAS_PAD_CFG0);

 return 0;
}
