
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_device {int dss; TYPE_1__* feat; } ;
typedef scalar_t__ (* dispc_div_calc_func ) (int,int,unsigned long,unsigned long,void*) ;
struct TYPE_2__ {unsigned long min_pcd; } ;


 unsigned int CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK ;
 int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int FEAT_CORE_CLK_DIV ;
 unsigned long ULONG_MAX ;
 unsigned long dispc_core_clk_rate (struct dispc_device*) ;
 scalar_t__ dispc_has_feature (struct dispc_device*,int ) ;
 unsigned long dss_get_max_fck_rate (int ) ;
 int max (int ,unsigned long) ;
 int min (unsigned long,unsigned long) ;

bool dispc_div_calc(struct dispc_device *dispc, unsigned long dispc_freq,
      unsigned long pck_min, unsigned long pck_max,
      dispc_div_calc_func func, void *data)
{
 int lckd, lckd_start, lckd_stop;
 int pckd, pckd_start, pckd_stop;
 unsigned long pck, lck;
 unsigned long lck_max;
 unsigned long pckd_hw_min, pckd_hw_max;
 unsigned int min_fck_per_pck;
 unsigned long fck;




 min_fck_per_pck = 0;


 pckd_hw_min = dispc->feat->min_pcd;
 pckd_hw_max = 255;

 lck_max = dss_get_max_fck_rate(dispc->dss);

 pck_min = pck_min ? pck_min : 1;
 pck_max = pck_max ? pck_max : ULONG_MAX;

 lckd_start = max(DIV_ROUND_UP(dispc_freq, lck_max), 1ul);
 lckd_stop = min(dispc_freq / pck_min, 255ul);

 for (lckd = lckd_start; lckd <= lckd_stop; ++lckd) {
  lck = dispc_freq / lckd;

  pckd_start = max(DIV_ROUND_UP(lck, pck_max), pckd_hw_min);
  pckd_stop = min(lck / pck_min, pckd_hw_max);

  for (pckd = pckd_start; pckd <= pckd_stop; ++pckd) {
   pck = lck / pckd;







   if (dispc_has_feature(dispc, FEAT_CORE_CLK_DIV))
    fck = dispc_core_clk_rate(dispc);
   else
    fck = lck;

   if (fck < pck * min_fck_per_pck)
    continue;

   if (func(lckd, pckd, lck, pck, data))
    return 1;
  }
 }

 return 0;
}
