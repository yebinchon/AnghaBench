
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sc27xx_adc_data {int dummy; } ;


 int SC27XX_RATIO_DENOMINATOR_MASK ;
 int SC27XX_RATIO_NUMERATOR_OFFSET ;
 int sc27xx_adc_get_ratio (int,int) ;

__attribute__((used)) static void sc27xx_adc_volt_ratio(struct sc27xx_adc_data *data,
      int channel, int scale,
      u32 *div_numerator, u32 *div_denominator)
{
 u32 ratio = sc27xx_adc_get_ratio(channel, scale);

 *div_numerator = ratio >> SC27XX_RATIO_NUMERATOR_OFFSET;
 *div_denominator = ratio & SC27XX_RATIO_DENOMINATOR_MASK;
}
