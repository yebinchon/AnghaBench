
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct exynos_dsi_driver_data {scalar_t__ has_freqband; scalar_t__ plltmr_reg; int * reg_values; } ;
struct exynos_dsi {unsigned long pll_clk_rate; int dev; scalar_t__ reg_base; struct exynos_dsi_driver_data* driver_data; } ;


 int ARRAY_SIZE (unsigned long const*) ;
 int DSIM_FREQ_BAND (int) ;
 int DSIM_PLLCTRL_REG ;
 int DSIM_PLL_EN ;
 int DSIM_PLL_M (int ) ;
 int DSIM_PLL_P (int ) ;
 int DSIM_PLL_S (int ) ;
 int DSIM_PLL_STABLE ;
 int DSIM_STATUS_REG ;

 size_t PLL_TIMER ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*) ;
 unsigned long exynos_dsi_pll_find_pms (struct exynos_dsi*,unsigned long,unsigned long,int *,int *,int *) ;
 int exynos_dsi_read (struct exynos_dsi*,int ) ;
 int exynos_dsi_write (struct exynos_dsi*,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static unsigned long exynos_dsi_set_pll(struct exynos_dsi *dsi,
     unsigned long freq)
{
 const struct exynos_dsi_driver_data *driver_data = dsi->driver_data;
 unsigned long fin, fout;
 int timeout;
 u8 p, s;
 u16 m;
 u32 reg;

 fin = dsi->pll_clk_rate;
 fout = exynos_dsi_pll_find_pms(dsi, fin, freq, &p, &m, &s);
 if (!fout) {
  dev_err(dsi->dev,
   "failed to find PLL PMS for requested frequency\n");
  return 0;
 }
 dev_dbg(dsi->dev, "PLL freq %lu, (p %d, m %d, s %d)\n", fout, p, m, s);

 writel(driver_data->reg_values[PLL_TIMER],
   dsi->reg_base + driver_data->plltmr_reg);

 reg = DSIM_PLL_EN | DSIM_PLL_P(p) | DSIM_PLL_M(m) | DSIM_PLL_S(s);

 if (driver_data->has_freqband) {
  static const unsigned long freq_bands[] = {
   100 * 128, 120 * 128, 160 * 128, 200 * 128,
   270 * 128, 320 * 128, 390 * 128, 450 * 128,
   510 * 128, 560 * 128, 640 * 128, 690 * 128,
   770 * 128, 870 * 128, 950 * 128,
  };
  int band;

  for (band = 0; band < ARRAY_SIZE(freq_bands); ++band)
   if (fout < freq_bands[band])
    break;

  dev_dbg(dsi->dev, "band %d\n", band);

  reg |= DSIM_FREQ_BAND(band);
 }

 exynos_dsi_write(dsi, DSIM_PLLCTRL_REG, reg);

 timeout = 1000;
 do {
  if (timeout-- == 0) {
   dev_err(dsi->dev, "PLL failed to stabilize\n");
   return 0;
  }
  reg = exynos_dsi_read(dsi, DSIM_STATUS_REG);
 } while ((reg & DSIM_PLL_STABLE) == 0);

 return fout;
}
