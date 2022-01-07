
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_adc_iio {int regmap; } ;


 int AXP20X_ADC_RATE ;
 int AXP20X_ADC_RATE_HZ (int) ;
 int AXP20X_ADC_RATE_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int axp20x_adc_rate(struct axp20x_adc_iio *info, int rate)
{
 return regmap_update_bits(info->regmap, AXP20X_ADC_RATE,
      AXP20X_ADC_RATE_MASK,
      AXP20X_ADC_RATE_HZ(rate));
}
