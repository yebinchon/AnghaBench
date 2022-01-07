
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5758_state {int dc_dc_mode; } ;
typedef enum ad5758_dc_dc_mode { ____Placeholder_ad5758_dc_dc_mode } ad5758_dc_dc_mode ;


 int AD5758_ADC_CONFIG ;
 int AD5758_ADC_CONFIG_PPC_BUF_EN (int) ;
 int AD5758_ADC_CONFIG_PPC_BUF_MSK ;
 int AD5758_DCDC_CONFIG1 ;
 int AD5758_DCDC_CONFIG1_DCDC_MODE_MODE (int) ;
 int AD5758_DCDC_CONFIG1_DCDC_MODE_MSK ;
 int AD5758_DCDC_CONFIG2 ;
 int AD5758_DCDC_CONFIG2_BUSY_3WI_MSK ;
 int AD5758_DCDC_MODE_PPC_CURRENT ;
 int ad5758_spi_write_mask (struct ad5758_state*,int ,int ,int ) ;
 int ad5758_wait_for_task_complete (struct ad5758_state*,int ,int ) ;

__attribute__((used)) static int ad5758_set_dc_dc_conv_mode(struct ad5758_state *st,
          enum ad5758_dc_dc_mode mode)
{
 int ret;





 if (mode == AD5758_DCDC_MODE_PPC_CURRENT) {
  ret = ad5758_spi_write_mask(st, AD5758_ADC_CONFIG,
        AD5758_ADC_CONFIG_PPC_BUF_MSK,
        AD5758_ADC_CONFIG_PPC_BUF_EN(1));
  if (ret < 0)
   return ret;
 }

 ret = ad5758_spi_write_mask(st, AD5758_DCDC_CONFIG1,
        AD5758_DCDC_CONFIG1_DCDC_MODE_MSK,
        AD5758_DCDC_CONFIG1_DCDC_MODE_MODE(mode));
 if (ret < 0)
  return ret;





 ret = ad5758_wait_for_task_complete(st, AD5758_DCDC_CONFIG2,
         AD5758_DCDC_CONFIG2_BUSY_3WI_MSK);
 if (ret < 0)
  return ret;

 st->dc_dc_mode = mode;

 return ret;
}
