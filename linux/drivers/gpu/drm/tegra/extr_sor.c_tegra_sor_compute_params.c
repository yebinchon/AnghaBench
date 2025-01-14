
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tegra_sor_params {int precision; unsigned int ratio; scalar_t__ error; int active_count; int active_polarity; int active_frac; unsigned int tu_size; int num_clocks; } ;
struct tegra_sor {int dummy; } ;
typedef int s64 ;


 scalar_t__ abs (int ) ;
 int div_s64 (int,unsigned int) ;
 int div_u64 (int const,int const) ;

__attribute__((used)) static int tegra_sor_compute_params(struct tegra_sor *sor,
        struct tegra_sor_params *params,
        unsigned int tu_size)
{
 u64 active_sym, active_count, frac, approx;
 u32 active_polarity, active_frac = 0;
 const u64 f = params->precision;
 s64 error;

 active_sym = params->ratio * tu_size;
 active_count = div_u64(active_sym, f) * f;
 frac = active_sym - active_count;


 if (frac >= (f / 2)) {
  active_polarity = 1;
  frac = f - frac;
 } else {
  active_polarity = 0;
 }

 if (frac != 0) {
  frac = div_u64(f * f, frac);
  if (frac <= (15 * f)) {
   active_frac = div_u64(frac, f);


   if (active_polarity)
    active_frac++;
  } else {
   active_frac = active_polarity ? 1 : 15;
  }
 }

 if (active_frac == 1)
  active_polarity = 0;

 if (active_polarity == 1) {
  if (active_frac) {
   approx = active_count + (active_frac * (f - 1)) * f;
   approx = div_u64(approx, active_frac * f);
  } else {
   approx = active_count + f;
  }
 } else {
  if (active_frac)
   approx = active_count + div_u64(f, active_frac);
  else
   approx = active_count;
 }

 error = div_s64(active_sym - approx, tu_size);
 error *= params->num_clocks;

 if (error <= 0 && abs(error) < params->error) {
  params->active_count = div_u64(active_count, f);
  params->active_polarity = active_polarity;
  params->active_frac = active_frac;
  params->error = abs(error);
  params->tu_size = tu_size;

  if (error == 0)
   return 1;
 }

 return 0;
}
