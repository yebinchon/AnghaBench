
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct aspeed_adc_data {scalar_t__ base; } ;


 unsigned int ASPEED_REG_MAX ;
 int EINVAL ;
 struct aspeed_adc_data* iio_priv (struct iio_dev*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int aspeed_adc_reg_access(struct iio_dev *indio_dev,
     unsigned int reg, unsigned int writeval,
     unsigned int *readval)
{
 struct aspeed_adc_data *data = iio_priv(indio_dev);

 if (!readval || reg % 4 || reg > ASPEED_REG_MAX)
  return -EINVAL;

 *readval = readl(data->base + reg);

 return 0;
}
