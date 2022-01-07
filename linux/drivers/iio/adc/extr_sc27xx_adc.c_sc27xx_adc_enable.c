
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_adc_data {int regmap; } ;


 int SC27XX_ARM_CLK_EN ;
 int SC27XX_CLK_ADC_CLK_EN ;
 int SC27XX_CLK_ADC_EN ;
 int SC27XX_MODULE_ADC_EN ;
 int SC27XX_MODULE_EN ;
 int regmap_update_bits (int ,int ,int,int) ;
 int sc27xx_adc_scale_calibration (struct sc27xx_adc_data*,int) ;

__attribute__((used)) static int sc27xx_adc_enable(struct sc27xx_adc_data *data)
{
 int ret;

 ret = regmap_update_bits(data->regmap, SC27XX_MODULE_EN,
     SC27XX_MODULE_ADC_EN, SC27XX_MODULE_ADC_EN);
 if (ret)
  return ret;


 ret = regmap_update_bits(data->regmap, SC27XX_ARM_CLK_EN,
     SC27XX_CLK_ADC_EN | SC27XX_CLK_ADC_CLK_EN,
     SC27XX_CLK_ADC_EN | SC27XX_CLK_ADC_CLK_EN);
 if (ret)
  goto disable_adc;


 ret = sc27xx_adc_scale_calibration(data, 1);
 if (ret)
  goto disable_clk;

 ret = sc27xx_adc_scale_calibration(data, 0);
 if (ret)
  goto disable_clk;

 return 0;

disable_clk:
 regmap_update_bits(data->regmap, SC27XX_ARM_CLK_EN,
      SC27XX_CLK_ADC_EN | SC27XX_CLK_ADC_CLK_EN, 0);
disable_adc:
 regmap_update_bits(data->regmap, SC27XX_MODULE_EN,
      SC27XX_MODULE_ADC_EN, 0);

 return ret;
}
