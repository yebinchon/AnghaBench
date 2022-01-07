
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct exynos_adc {unsigned int regs; } ;


 int EINVAL ;
 struct exynos_adc* iio_priv (struct iio_dev*) ;
 unsigned int readl (unsigned int) ;

__attribute__((used)) static int exynos_adc_reg_access(struct iio_dev *indio_dev,
         unsigned reg, unsigned writeval,
         unsigned *readval)
{
 struct exynos_adc *info = iio_priv(indio_dev);

 if (readval == ((void*)0))
  return -EINVAL;

 *readval = readl(info->regs + reg);

 return 0;
}
