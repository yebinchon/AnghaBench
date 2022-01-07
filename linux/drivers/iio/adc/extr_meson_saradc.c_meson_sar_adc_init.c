
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct meson_sar_adc_priv {int temperature_sensor_coefficient; TYPE_1__* param; int adc_clk; int clkin; int adc_sel_clk; int regmap; int tsc_regmap; scalar_t__ temperature_sensor_calibrated; } ;
struct TYPE_4__ {int parent; } ;
struct iio_dev {TYPE_2__ dev; } ;
struct TYPE_3__ {int temperature_trimming_bits; int clock_rate; scalar_t__ has_bl30_integration; } ;


 int BIT (int) ;
 int CHAN7_MUX_CH7_INPUT ;
 int FIELD_PREP (int,int) ;
 int MESON_HHI_DPLL_TOP_0 ;
 int MESON_HHI_DPLL_TOP_0_TSC_BIT4 ;
 int MESON_SAR_ADC_AUX_SW ;
 int MESON_SAR_ADC_AUX_SW_MUX_SEL_CHAN_SHIFT (int) ;
 int MESON_SAR_ADC_AUX_SW_XP_DRIVE_SW ;
 int MESON_SAR_ADC_AUX_SW_YP_DRIVE_SW ;
 int MESON_SAR_ADC_CHAN_10_SW ;
 int MESON_SAR_ADC_CHAN_10_SW_CHAN0_MUX_SEL_MASK ;
 int MESON_SAR_ADC_CHAN_10_SW_CHAN1_MUX_SEL_MASK ;
 int MESON_SAR_ADC_CHAN_LIST ;
 int MESON_SAR_ADC_DELAY ;
 int MESON_SAR_ADC_DELAY_INPUT_DLY_CNT_MASK ;
 int MESON_SAR_ADC_DELAY_INPUT_DLY_SEL_MASK ;
 int MESON_SAR_ADC_DELAY_SAMPLE_DLY_CNT_MASK ;
 int MESON_SAR_ADC_DELAY_SAMPLE_DLY_SEL_MASK ;
 int MESON_SAR_ADC_DELTA_10 ;
 int MESON_SAR_ADC_DELTA_10_TS_C_MASK ;
 int MESON_SAR_ADC_DELTA_10_TS_REVE0 ;
 int MESON_SAR_ADC_DELTA_10_TS_REVE1 ;
 int MESON_SAR_ADC_REG0 ;
 int MESON_SAR_ADC_REG0_ADC_TEMP_SEN_SEL ;
 int MESON_SAR_ADC_REG3 ;
 int MESON_SAR_ADC_REG3_BL30_INITIALIZED ;
 int MESON_SAR_ADC_REG3_CNTL_USE_SC_DLY ;
 int MESON_SAR_ADC_REG3_CTRL_SAMPLING_CLOCK_PHASE ;
 int clk_set_parent (int ,int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int ,char*) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int meson_sar_adc_set_chan7_mux (struct iio_dev*,int ) ;
 int meson_sar_adc_stop_sample_engine (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int meson_sar_adc_init(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int regval, i, ret;





 meson_sar_adc_set_chan7_mux(indio_dev, CHAN7_MUX_CH7_INPUT);

 if (priv->param->has_bl30_integration) {





  regmap_read(priv->regmap, MESON_SAR_ADC_REG3, &regval);
  if (regval & MESON_SAR_ADC_REG3_BL30_INITIALIZED)
   return 0;
 }

 meson_sar_adc_stop_sample_engine(indio_dev);





 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG0,
   MESON_SAR_ADC_REG0_ADC_TEMP_SEN_SEL, 0);


 regmap_write(priv->regmap, MESON_SAR_ADC_CHAN_LIST, 0x0);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG3,
      MESON_SAR_ADC_REG3_CTRL_SAMPLING_CLOCK_PHASE, 0);
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG3,
      MESON_SAR_ADC_REG3_CNTL_USE_SC_DLY,
      MESON_SAR_ADC_REG3_CNTL_USE_SC_DLY);


 regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELAY,
      MESON_SAR_ADC_DELAY_INPUT_DLY_CNT_MASK,
      FIELD_PREP(MESON_SAR_ADC_DELAY_SAMPLE_DLY_CNT_MASK,
          10));
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELAY,
      MESON_SAR_ADC_DELAY_SAMPLE_DLY_SEL_MASK,
      FIELD_PREP(MESON_SAR_ADC_DELAY_SAMPLE_DLY_SEL_MASK,
          0));


 regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELAY,
      MESON_SAR_ADC_DELAY_INPUT_DLY_CNT_MASK,
      FIELD_PREP(MESON_SAR_ADC_DELAY_INPUT_DLY_CNT_MASK,
          10));
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELAY,
      MESON_SAR_ADC_DELAY_INPUT_DLY_SEL_MASK,
      FIELD_PREP(MESON_SAR_ADC_DELAY_INPUT_DLY_SEL_MASK,
          1));





 regval = FIELD_PREP(MESON_SAR_ADC_CHAN_10_SW_CHAN0_MUX_SEL_MASK, 0);
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_CHAN_10_SW,
      MESON_SAR_ADC_CHAN_10_SW_CHAN0_MUX_SEL_MASK,
      regval);
 regval = FIELD_PREP(MESON_SAR_ADC_CHAN_10_SW_CHAN1_MUX_SEL_MASK, 1);
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_CHAN_10_SW,
      MESON_SAR_ADC_CHAN_10_SW_CHAN1_MUX_SEL_MASK,
      regval);







 regval = 0;
 for (i = 2; i <= 7; i++)
  regval |= i << MESON_SAR_ADC_AUX_SW_MUX_SEL_CHAN_SHIFT(i);
 regval |= MESON_SAR_ADC_AUX_SW_YP_DRIVE_SW;
 regval |= MESON_SAR_ADC_AUX_SW_XP_DRIVE_SW;
 regmap_write(priv->regmap, MESON_SAR_ADC_AUX_SW, regval);

 if (priv->temperature_sensor_calibrated) {
  regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELTA_10,
       MESON_SAR_ADC_DELTA_10_TS_REVE1,
       MESON_SAR_ADC_DELTA_10_TS_REVE1);
  regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELTA_10,
       MESON_SAR_ADC_DELTA_10_TS_REVE0,
       MESON_SAR_ADC_DELTA_10_TS_REVE0);





  regval = FIELD_PREP(MESON_SAR_ADC_DELTA_10_TS_C_MASK,
        priv->temperature_sensor_coefficient);
  regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELTA_10,
       MESON_SAR_ADC_DELTA_10_TS_C_MASK, regval);

  if (priv->param->temperature_trimming_bits == 5) {
   if (priv->temperature_sensor_coefficient & BIT(4))
    regval = MESON_HHI_DPLL_TOP_0_TSC_BIT4;
   else
    regval = 0;





   regmap_update_bits(priv->tsc_regmap,
        MESON_HHI_DPLL_TOP_0,
        MESON_HHI_DPLL_TOP_0_TSC_BIT4,
        regval);
  }
 } else {
  regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELTA_10,
       MESON_SAR_ADC_DELTA_10_TS_REVE1, 0);
  regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELTA_10,
       MESON_SAR_ADC_DELTA_10_TS_REVE0, 0);
 }

 ret = clk_set_parent(priv->adc_sel_clk, priv->clkin);
 if (ret) {
  dev_err(indio_dev->dev.parent,
   "failed to set adc parent to clkin\n");
  return ret;
 }

 ret = clk_set_rate(priv->adc_clk, priv->param->clock_rate);
 if (ret) {
  dev_err(indio_dev->dev.parent,
   "failed to set adc clock rate\n");
  return ret;
 }

 return 0;
}
