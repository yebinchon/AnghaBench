
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7949_adc_chip {unsigned int cfg; } ;


 unsigned int AD7949_MASK_TOTAL ;
 int ad7949_spi_write_cfg (struct ad7949_adc_chip*,unsigned int,unsigned int) ;
 struct ad7949_adc_chip* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7949_spi_reg_access(struct iio_dev *indio_dev,
   unsigned int reg, unsigned int writeval,
   unsigned int *readval)
{
 struct ad7949_adc_chip *ad7949_adc = iio_priv(indio_dev);
 int ret = 0;

 if (readval)
  *readval = ad7949_adc->cfg;
 else
  ret = ad7949_spi_write_cfg(ad7949_adc,
   writeval & AD7949_MASK_TOTAL, AD7949_MASK_TOTAL);

 return ret;
}
