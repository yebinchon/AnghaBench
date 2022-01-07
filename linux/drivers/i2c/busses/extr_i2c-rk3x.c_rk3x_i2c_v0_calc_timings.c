
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3x_i2c_calced_timings {unsigned long div_low; unsigned long div_high; scalar_t__ tuning; } ;
struct i2c_timings {int bus_freq_hz; unsigned long scl_rise_ns; unsigned long sda_fall_ns; unsigned long scl_fall_ns; } ;
struct i2c_spec_values {unsigned long min_high_ns; int min_setup_start_ns; unsigned long min_low_ns; int max_data_hold_ns; } ;


 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ONCE (int,char*,unsigned long,unsigned long) ;
 unsigned long max (unsigned long,unsigned long) ;
 struct i2c_spec_values* rk3x_i2c_get_spec (int) ;

__attribute__((used)) static int rk3x_i2c_v0_calc_timings(unsigned long clk_rate,
        struct i2c_timings *t,
        struct rk3x_i2c_calced_timings *t_calc)
{
 unsigned long min_low_ns, min_high_ns;
 unsigned long max_low_ns, min_total_ns;

 unsigned long clk_rate_khz, scl_rate_khz;

 unsigned long min_low_div, min_high_div;
 unsigned long max_low_div;

 unsigned long min_div_for_hold, min_total_div;
 unsigned long extra_div, extra_low_div, ideal_low_div;

 unsigned long data_hold_buffer_ns = 50;
 const struct i2c_spec_values *spec;
 int ret = 0;


 if (WARN_ON(t->bus_freq_hz > 400000))
  t->bus_freq_hz = 400000;


 if (WARN_ON(t->bus_freq_hz < 1000))
  t->bus_freq_hz = 1000;
 spec = rk3x_i2c_get_spec(t->bus_freq_hz);
 min_high_ns = t->scl_rise_ns + spec->min_high_ns;
 min_high_ns = max(min_high_ns, DIV_ROUND_UP(
  (t->scl_rise_ns + spec->min_setup_start_ns) * 1000, 875));
 min_high_ns = max(min_high_ns, DIV_ROUND_UP(
  (t->scl_rise_ns + spec->min_setup_start_ns + t->sda_fall_ns +
  spec->min_high_ns), 2));

 min_low_ns = t->scl_fall_ns + spec->min_low_ns;
 max_low_ns = spec->max_data_hold_ns * 2 - data_hold_buffer_ns;
 min_total_ns = min_low_ns + min_high_ns;


 clk_rate_khz = DIV_ROUND_UP(clk_rate, 1000);
 scl_rate_khz = t->bus_freq_hz / 1000;





 min_total_div = DIV_ROUND_UP(clk_rate_khz, scl_rate_khz * 8);


 min_low_div = DIV_ROUND_UP(clk_rate_khz * min_low_ns, 8 * 1000000);
 min_high_div = DIV_ROUND_UP(clk_rate_khz * min_high_ns, 8 * 1000000);
 min_div_for_hold = (min_low_div + min_high_div);





 max_low_div = clk_rate_khz * max_low_ns / (8 * 1000000);

 if (min_low_div > max_low_div) {
  WARN_ONCE(1,
     "Conflicting, min_low_div %lu, max_low_div %lu\n",
     min_low_div, max_low_div);
  max_low_div = min_low_div;
 }

 if (min_div_for_hold > min_total_div) {




  t_calc->div_low = min_low_div;
  t_calc->div_high = min_high_div;
 } else {




  extra_div = min_total_div - min_div_for_hold;






  ideal_low_div = DIV_ROUND_UP(clk_rate_khz * min_low_ns,
          scl_rate_khz * 8 * min_total_ns);


  if (ideal_low_div > max_low_div)
   ideal_low_div = max_low_div;





  if (ideal_low_div > min_low_div + extra_div)
   ideal_low_div = min_low_div + extra_div;


  extra_low_div = ideal_low_div - min_low_div;
  t_calc->div_low = ideal_low_div;
  t_calc->div_high = min_high_div + (extra_div - extra_low_div);
 }





 t_calc->div_low--;
 t_calc->div_high--;


 t_calc->tuning = 0;

 if (t_calc->div_low > 0xffff) {
  t_calc->div_low = 0xffff;
  ret = -EINVAL;
 }

 if (t_calc->div_high > 0xffff) {
  t_calc->div_high = 0xffff;
  ret = -EINVAL;
 }

 return ret;
}
