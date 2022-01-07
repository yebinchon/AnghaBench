
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
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static void sc27xx_adc_disable(void *_data)
{
 struct sc27xx_adc_data *data = _data;


 regmap_update_bits(data->regmap, SC27XX_ARM_CLK_EN,
      SC27XX_CLK_ADC_EN | SC27XX_CLK_ADC_CLK_EN, 0);

 regmap_update_bits(data->regmap, SC27XX_MODULE_EN,
      SC27XX_MODULE_ADC_EN, 0);
}
