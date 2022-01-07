
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ad5758_state {scalar_t__ slew_time; } ;
typedef scalar_t__ s64 ;


 scalar_t__ AD5758_FULL_SCALE_MICRO ;
 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ S64_MAX ;
 scalar_t__ abs (scalar_t__) ;
 int ad5758_find_closest_match (scalar_t__*,int,scalar_t__) ;
 int ad5758_slew_rate_set (struct ad5758_state*,unsigned int,unsigned int) ;
 scalar_t__* ad5758_sr_clk ;
 scalar_t__* ad5758_sr_step ;
 int do_div (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ad5758_slew_rate_config(struct ad5758_state *st)
{
 unsigned int sr_clk_idx, sr_step_idx;
 int i, res;
 s64 diff_new, diff_old;
 u64 sr_step, calc_slew_time;

 sr_clk_idx = 0;
 sr_step_idx = 0;
 diff_old = S64_MAX;







 for (i = 0; i < ARRAY_SIZE(ad5758_sr_clk); i++) {





  sr_step = AD5758_FULL_SCALE_MICRO;
  do_div(sr_step, ad5758_sr_clk[i]);
  do_div(sr_step, st->slew_time);




  res = ad5758_find_closest_match(ad5758_sr_step,
      ARRAY_SIZE(ad5758_sr_step),
      sr_step);

  calc_slew_time = AD5758_FULL_SCALE_MICRO;
  do_div(calc_slew_time, ad5758_sr_step[res]);
  do_div(calc_slew_time, ad5758_sr_clk[i]);





  diff_new = abs(st->slew_time - calc_slew_time);
  if (diff_new < diff_old) {
   diff_old = diff_new;
   sr_clk_idx = i;
   sr_step_idx = res;
  }
 }

 return ad5758_slew_rate_set(st, sr_clk_idx, sr_step_idx);
}
