
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iio_dev {int dev; } ;
struct at91_adc_state {int ts_pendbc; scalar_t__ touchscreen_type; void* ts_sample_period_val; TYPE_1__* caps; } ;
struct TYPE_2__ {int ts_pen_detect_sensitivity; int ts_filter_average; int has_tsmr; } ;


 int AT91_ADC_ACR ;
 int AT91_ADC_ACR_PENDETSENS ;
 int AT91_ADC_MR ;
 int AT91_ADC_PENDBC ;
 int AT91_ADC_PENDBC_ (int) ;
 int AT91_ADC_PENDET ;
 int AT91_ADC_TSAMOD_TS_ONLY_MODE ;
 int AT91_ADC_TSMR ;
 int AT91_ADC_TSMR_NOTSDMA ;
 int AT91_ADC_TSMR_PENDBC ;
 int AT91_ADC_TSMR_PENDBC_ (int) ;
 int AT91_ADC_TSMR_PENDET_ENA ;
 int AT91_ADC_TSMR_SCTIM ;
 int AT91_ADC_TSMR_SCTIM_ (int) ;
 int AT91_ADC_TSMR_TSAV ;
 int AT91_ADC_TSMR_TSAV_ (int ) ;
 int AT91_ADC_TSMR_TSMODE_4WIRE_PRESS ;
 int AT91_ADC_TSMR_TSMODE_5WIRE ;
 int AT91_ADC_TSR ;
 int AT91_ADC_TSR_SHTIM ;
 int AT91_ADC_TSR_SHTIM_ (int ) ;
 scalar_t__ ATMEL_ADC_TOUCHSCREEN_4WIRE ;
 int DIV_ROUND_UP (int,int) ;
 int TOUCH_PEN_DETECT_DEBOUNCE_US ;
 int TOUCH_SAMPLE_PERIOD_US ;
 int TOUCH_SAMPLE_PERIOD_US_RL ;
 int TOUCH_SCTIM_US ;
 int TOUCH_SHTIM ;
 scalar_t__ abs (int) ;
 int at91_adc_readl (struct at91_adc_state*,int ) ;
 int at91_adc_writel (struct at91_adc_state*,int ,int) ;
 int dev_dbg (int *,char*,int,int) ;
 struct iio_dev* iio_priv_to_dev (struct at91_adc_state*) ;
 void* round_up (int,int) ;

__attribute__((used)) static int at91_ts_hw_init(struct at91_adc_state *st, u32 adc_clk_khz)
{
 struct iio_dev *idev = iio_priv_to_dev(st);
 u32 reg = 0;
 u32 tssctim = 0;
 int i = 0;





 st->ts_pendbc = round_up(TOUCH_PEN_DETECT_DEBOUNCE_US * adc_clk_khz /
     1000, 1);

 while (st->ts_pendbc >> ++i)
  ;
 if (abs(st->ts_pendbc - (1 << i)) < abs(st->ts_pendbc - (1 << (i - 1))))
  st->ts_pendbc = i;
 else
  st->ts_pendbc = i - 1;

 if (!st->caps->has_tsmr) {
  reg = at91_adc_readl(st, AT91_ADC_MR);
  reg |= AT91_ADC_TSAMOD_TS_ONLY_MODE | AT91_ADC_PENDET;

  reg |= AT91_ADC_PENDBC_(st->ts_pendbc) & AT91_ADC_PENDBC;
  at91_adc_writel(st, AT91_ADC_MR, reg);

  reg = AT91_ADC_TSR_SHTIM_(TOUCH_SHTIM) & AT91_ADC_TSR_SHTIM;
  at91_adc_writel(st, AT91_ADC_TSR, reg);

  st->ts_sample_period_val = round_up((TOUCH_SAMPLE_PERIOD_US_RL *
          adc_clk_khz / 1000) - 1, 1);

  return 0;
 }





 tssctim = DIV_ROUND_UP(TOUCH_SCTIM_US * adc_clk_khz / 1000, 4);
 dev_dbg(&idev->dev, "adc_clk at: %d KHz, tssctim at: %d\n",
  adc_clk_khz, tssctim);

 if (st->touchscreen_type == ATMEL_ADC_TOUCHSCREEN_4WIRE)
  reg = AT91_ADC_TSMR_TSMODE_4WIRE_PRESS;
 else
  reg = AT91_ADC_TSMR_TSMODE_5WIRE;

 reg |= AT91_ADC_TSMR_SCTIM_(tssctim) & AT91_ADC_TSMR_SCTIM;
 reg |= AT91_ADC_TSMR_TSAV_(st->caps->ts_filter_average)
        & AT91_ADC_TSMR_TSAV;
 reg |= AT91_ADC_TSMR_PENDBC_(st->ts_pendbc) & AT91_ADC_TSMR_PENDBC;
 reg |= AT91_ADC_TSMR_NOTSDMA;
 reg |= AT91_ADC_TSMR_PENDET_ENA;
 reg |= 0x03 << 8;

 at91_adc_writel(st, AT91_ADC_TSMR, reg);






 at91_adc_writel(st, AT91_ADC_ACR, st->caps->ts_pen_detect_sensitivity
   & AT91_ADC_ACR_PENDETSENS);


 st->ts_sample_period_val = round_up((TOUCH_SAMPLE_PERIOD_US *
   adc_clk_khz / 1000) - 1, 1);

 return 0;
}
