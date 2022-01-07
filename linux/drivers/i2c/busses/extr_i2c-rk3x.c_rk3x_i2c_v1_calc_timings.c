
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3x_i2c_calced_timings {unsigned long div_low; unsigned long div_high; int tuning; } ;
struct i2c_timings {int bus_freq_hz; unsigned long scl_rise_ns; unsigned long scl_fall_ns; } ;
struct i2c_spec_values {unsigned long min_high_ns; unsigned long min_low_ns; unsigned long max_data_hold_ns; unsigned long min_data_setup_ns; unsigned long min_setup_start_ns; unsigned long min_setup_stop_ns; } ;


 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 int EINVAL ;
 int REG_CON_SDA_CFG (unsigned long) ;
 int REG_CON_STA_CFG (unsigned long) ;
 int REG_CON_STO_CFG (unsigned long) ;
 scalar_t__ WARN_ON (int) ;
 struct i2c_spec_values* rk3x_i2c_get_spec (int) ;

__attribute__((used)) static int rk3x_i2c_v1_calc_timings(unsigned long clk_rate,
        struct i2c_timings *t,
        struct rk3x_i2c_calced_timings *t_calc)
{
 unsigned long min_low_ns, min_high_ns;
 unsigned long min_setup_start_ns, min_setup_data_ns;
 unsigned long min_setup_stop_ns, max_hold_data_ns;

 unsigned long clk_rate_khz, scl_rate_khz;

 unsigned long min_low_div, min_high_div;

 unsigned long min_div_for_hold, min_total_div;
 unsigned long extra_div, extra_low_div;
 unsigned long sda_update_cfg, stp_sta_cfg, stp_sto_cfg;

 const struct i2c_spec_values *spec;
 int ret = 0;


 if (WARN_ON(t->bus_freq_hz > 1000000))
  t->bus_freq_hz = 1000000;


 if (WARN_ON(t->bus_freq_hz < 1000))
  t->bus_freq_hz = 1000;







 spec = rk3x_i2c_get_spec(t->bus_freq_hz);


 clk_rate_khz = DIV_ROUND_UP(clk_rate, 1000);
 scl_rate_khz = t->bus_freq_hz / 1000;
 min_total_div = DIV_ROUND_UP(clk_rate_khz, scl_rate_khz * 8);

 min_high_ns = t->scl_rise_ns + spec->min_high_ns;
 min_high_div = DIV_ROUND_UP(clk_rate_khz * min_high_ns, 8 * 1000000);

 min_low_ns = t->scl_fall_ns + spec->min_low_ns;
 min_low_div = DIV_ROUND_UP(clk_rate_khz * min_low_ns, 8 * 1000000);





 min_high_div = (min_high_div < 1) ? 2 : min_high_div;
 min_low_div = (min_low_div < 1) ? 2 : min_low_div;


 min_div_for_hold = (min_low_div + min_high_div);





 if (min_div_for_hold >= min_total_div) {




  t_calc->div_low = min_low_div;
  t_calc->div_high = min_high_div;
 } else {







  extra_div = min_total_div - min_div_for_hold;
  extra_low_div = DIV_ROUND_UP(min_low_div * extra_div,
          min_div_for_hold);

  t_calc->div_low = min_low_div + extra_low_div;
  t_calc->div_high = min_high_div + (extra_div - extra_low_div);
 }





 for (sda_update_cfg = 3; sda_update_cfg > 0; sda_update_cfg--) {
  max_hold_data_ns = DIV_ROUND_UP((sda_update_cfg
       * (t_calc->div_low) + 1)
       * 1000000, clk_rate_khz);
  min_setup_data_ns = DIV_ROUND_UP(((8 - sda_update_cfg)
       * (t_calc->div_low) + 1)
       * 1000000, clk_rate_khz);
  if ((max_hold_data_ns < spec->max_data_hold_ns) &&
      (min_setup_data_ns > spec->min_data_setup_ns))
   break;
 }


 min_setup_start_ns = t->scl_rise_ns + spec->min_setup_start_ns;
 stp_sta_cfg = DIV_ROUND_UP(clk_rate_khz * min_setup_start_ns
      - 1000000, 8 * 1000000 * (t_calc->div_high));


 min_setup_stop_ns = t->scl_rise_ns + spec->min_setup_stop_ns;
 stp_sto_cfg = DIV_ROUND_UP(clk_rate_khz * min_setup_stop_ns
      - 1000000, 8 * 1000000 * (t_calc->div_high));

 t_calc->tuning = REG_CON_SDA_CFG(--sda_update_cfg) |
    REG_CON_STA_CFG(--stp_sta_cfg) |
    REG_CON_STO_CFG(--stp_sto_cfg);

 t_calc->div_low--;
 t_calc->div_high--;


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
