
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi_stm {int lane_min_kbps; int lane_max_kbps; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 int IDF_MAX ;
 int IDF_MIN ;
 int NDIV_MAX ;
 int NDIV_MIN ;
 int ODF_MAX ;
 int ODF_MIN ;
 int dsi_pll_get_clkout_khz (int,int,int,int) ;

__attribute__((used)) static int dsi_pll_get_params(struct dw_mipi_dsi_stm *dsi,
         int clkin_khz, int clkout_khz,
         int *idf, int *ndiv, int *odf)
{
 int i, o, n, n_min, n_max;
 int fvco_min, fvco_max, delta, best_delta;


 if (clkin_khz <= 0 || clkout_khz <= 0)
  return -EINVAL;

 fvco_min = dsi->lane_min_kbps * 2 * ODF_MAX;
 fvco_max = dsi->lane_max_kbps * 2 * ODF_MIN;

 best_delta = 1000000;

 for (i = IDF_MIN; i <= IDF_MAX; i++) {

  n_min = ((fvco_min * i) / (2 * clkin_khz)) + 1;
  n_max = (fvco_max * i) / (2 * clkin_khz);


  if (n_min >= NDIV_MAX)
   break;


  if (n_min < NDIV_MIN)
   n_min = NDIV_MIN;
  if (n_max > NDIV_MAX)
   n_max = NDIV_MAX;

  for (o = ODF_MIN; o <= ODF_MAX; o *= 2) {
   n = DIV_ROUND_CLOSEST(i * o * clkout_khz, clkin_khz);

   if (n < n_min || n > n_max)
    continue;

   delta = dsi_pll_get_clkout_khz(clkin_khz, i, n, o) -
    clkout_khz;
   if (delta < 0)
    delta = -delta;
   if (delta < best_delta) {
    *idf = i;
    *ndiv = n;
    *odf = o;
    best_delta = delta;
   }

   if (!delta)
    return 0;
  }
 }

 return 0;
}
