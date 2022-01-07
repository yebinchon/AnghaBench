
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7949_adc_chip {int current_channel; } ;


 int AD7949_MASK_TOTAL ;
 int ad7949_spi_read_channel (struct ad7949_adc_chip*,int*,int ) ;
 int ad7949_spi_write_cfg (struct ad7949_adc_chip*,int,int ) ;

__attribute__((used)) static int ad7949_spi_init(struct ad7949_adc_chip *ad7949_adc)
{
 int ret;
 int val;


 ad7949_adc->current_channel = 0;
 ret = ad7949_spi_write_cfg(ad7949_adc, 0x3C79, AD7949_MASK_TOTAL);





 ad7949_spi_read_channel(ad7949_adc, &val, ad7949_adc->current_channel);
 ad7949_spi_read_channel(ad7949_adc, &val, ad7949_adc->current_channel);

 return ret;
}
