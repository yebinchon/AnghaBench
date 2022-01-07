
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;
struct at91_adc_state {unsigned int res; unsigned int ts_pressure_threshold; int ts_input; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int AT91_ADC_TSPRESSR ;
 int AT91_ADC_TSXPOSR ;
 int AT91_ADC_TSYPOSR ;
 int BTN_TOUCH ;
 unsigned int MAX_POS_BITS ;
 unsigned int at91_adc_readl (struct at91_adc_state*,int ) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 struct iio_dev* iio_priv_to_dev (struct at91_adc_state*) ;
 int input_report_abs (int ,int ,unsigned int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int at91_ts_sample(struct at91_adc_state *st)
{
 unsigned int xscale, yscale, reg, z1, z2;
 unsigned int x, y, pres, xpos, ypos;
 unsigned int rxp = 1;
 unsigned int factor = 1000;
 struct iio_dev *idev = iio_priv_to_dev(st);

 unsigned int xyz_mask_bits = st->res;
 unsigned int xyz_mask = (1 << xyz_mask_bits) - 1;



 reg = at91_adc_readl(st, AT91_ADC_TSXPOSR);
 xpos = reg & xyz_mask;
 x = (xpos << MAX_POS_BITS) - xpos;
 xscale = (reg >> 16) & xyz_mask;
 if (xscale == 0) {
  dev_err(&idev->dev, "Error: xscale == 0!\n");
  return -1;
 }
 x /= xscale;


 reg = at91_adc_readl(st, AT91_ADC_TSYPOSR);
 ypos = reg & xyz_mask;
 y = (ypos << MAX_POS_BITS) - ypos;
 yscale = (reg >> 16) & xyz_mask;
 if (yscale == 0) {
  dev_err(&idev->dev, "Error: yscale == 0!\n");
  return -1;
 }
 y /= yscale;


 reg = at91_adc_readl(st, AT91_ADC_TSPRESSR);
 z1 = reg & xyz_mask;
 z2 = (reg >> 16) & xyz_mask;

 if (z1 != 0)
  pres = rxp * (x * factor / 1024) * (z2 * factor / z1 - factor)
   / factor;
 else
  pres = st->ts_pressure_threshold;

 dev_dbg(&idev->dev, "xpos = %d, xscale = %d, ypos = %d, yscale = %d, z1 = %d, z2 = %d, press = %d\n",
    xpos, xscale, ypos, yscale, z1, z2, pres);

 if (pres < st->ts_pressure_threshold) {
  dev_dbg(&idev->dev, "x = %d, y = %d, pressure = %d\n",
     x, y, pres / factor);
  input_report_abs(st->ts_input, ABS_X, x);
  input_report_abs(st->ts_input, ABS_Y, y);
  input_report_abs(st->ts_input, ABS_PRESSURE, pres);
  input_report_key(st->ts_input, BTN_TOUCH, 1);
  input_sync(st->ts_input);
 } else {
  dev_dbg(&idev->dev, "pressure too low: not reporting\n");
 }

 return 0;
}
