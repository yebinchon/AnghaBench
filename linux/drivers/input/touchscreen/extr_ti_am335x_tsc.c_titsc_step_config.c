
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct titsc {unsigned int bit_xp; int wires; unsigned int bit_xn; unsigned int bit_yn; unsigned int bit_yp; int coordinate_readouts; unsigned int charge_delay; int step_mask; int mfd_tscadc; int inp_yn; int inp_xp; int inp_yp; } ;


 int REG_CHARGECONFIG ;
 int REG_CHARGEDELAY ;
 int REG_IDLECONFIG ;
 int REG_STEPCONFIG (int) ;
 int REG_STEPDELAY (int) ;
 unsigned int STEPCONFIG_AVG_16 ;
 unsigned int STEPCONFIG_INM_ADCREFM ;
 unsigned int STEPCONFIG_INP (int ) ;
 unsigned int STEPCONFIG_INP_AN4 ;
 unsigned int STEPCONFIG_MODE_HWSYNC ;
 unsigned int STEPCONFIG_OPENDLY ;
 unsigned int STEPCONFIG_XNP ;
 unsigned int STEPCONFIG_YPN ;
 int TOTAL_STEPS ;
 int am335x_tsc_se_set_cache (int ,int) ;
 unsigned int titsc_readl (struct titsc*,int ) ;
 int titsc_writel (struct titsc*,int ,unsigned int) ;

__attribute__((used)) static void titsc_step_config(struct titsc *ts_dev)
{
 unsigned int config;
 int i;
 int end_step, first_step, tsc_steps;
 u32 stepenable;

 config = STEPCONFIG_MODE_HWSYNC |
   STEPCONFIG_AVG_16 | ts_dev->bit_xp;
 switch (ts_dev->wires) {
 case 4:
  config |= STEPCONFIG_INP(ts_dev->inp_yp) | ts_dev->bit_xn;
  break;
 case 5:
  config |= ts_dev->bit_yn |
    STEPCONFIG_INP_AN4 | ts_dev->bit_xn |
    ts_dev->bit_yp;
  break;
 case 8:
  config |= STEPCONFIG_INP(ts_dev->inp_yp) | ts_dev->bit_xn;
  break;
 }

 tsc_steps = ts_dev->coordinate_readouts * 2 + 2;
 first_step = TOTAL_STEPS - tsc_steps;

 end_step = first_step + tsc_steps;
 for (i = end_step - ts_dev->coordinate_readouts; i < end_step; i++) {
  titsc_writel(ts_dev, REG_STEPCONFIG(i), config);
  titsc_writel(ts_dev, REG_STEPDELAY(i), STEPCONFIG_OPENDLY);
 }

 config = 0;
 config = STEPCONFIG_MODE_HWSYNC |
   STEPCONFIG_AVG_16 | ts_dev->bit_yn |
   STEPCONFIG_INM_ADCREFM;
 switch (ts_dev->wires) {
 case 4:
  config |= ts_dev->bit_yp | STEPCONFIG_INP(ts_dev->inp_xp);
  break;
 case 5:
  config |= ts_dev->bit_xp | STEPCONFIG_INP_AN4 |
    STEPCONFIG_XNP | STEPCONFIG_YPN;
  break;
 case 8:
  config |= ts_dev->bit_yp | STEPCONFIG_INP(ts_dev->inp_xp);
  break;
 }


 end_step = first_step + ts_dev->coordinate_readouts;
 for (i = first_step; i < end_step; i++) {
  titsc_writel(ts_dev, REG_STEPCONFIG(i), config);
  titsc_writel(ts_dev, REG_STEPDELAY(i), STEPCONFIG_OPENDLY);
 }



 config = titsc_readl(ts_dev, REG_IDLECONFIG);
 titsc_writel(ts_dev, REG_CHARGECONFIG, config);
 titsc_writel(ts_dev, REG_CHARGEDELAY, ts_dev->charge_delay);


 config = STEPCONFIG_MODE_HWSYNC |
   STEPCONFIG_AVG_16 | ts_dev->bit_yp |
   ts_dev->bit_xn | STEPCONFIG_INM_ADCREFM |
   STEPCONFIG_INP(ts_dev->inp_xp);
 titsc_writel(ts_dev, REG_STEPCONFIG(end_step), config);
 titsc_writel(ts_dev, REG_STEPDELAY(end_step),
   STEPCONFIG_OPENDLY);

 end_step++;
 config |= STEPCONFIG_INP(ts_dev->inp_yn);
 titsc_writel(ts_dev, REG_STEPCONFIG(end_step), config);
 titsc_writel(ts_dev, REG_STEPDELAY(end_step),
   STEPCONFIG_OPENDLY);


 stepenable = 1;
 for (i = 0; i < tsc_steps; i++)
  stepenable |= 1 << (first_step + i + 1);

 ts_dev->step_mask = stepenable;
 am335x_tsc_se_set_cache(ts_dev->mfd_tscadc, ts_dev->step_mask);
}
