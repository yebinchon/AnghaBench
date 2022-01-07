
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; int dev; } ;
struct exynos_adc {int read_ts; int ts_x; int ts_y; TYPE_1__* data; int completion; int regs; } ;
struct TYPE_2__ {int (* init_hw ) (struct exynos_adc*) ;int (* start_conv ) (struct exynos_adc*,int ) ;} ;


 int ADC_S3C2410_MUX_TS ;
 int ADC_S3C2410_TSC_PULL_UP_DISABLE ;
 int ADC_TSC_AUTOPST ;
 int ADC_V1_TSC (int ) ;
 int ETIMEDOUT ;
 int EXYNOS_ADC_TIMEOUT ;
 int dev_warn (int *,char*) ;
 struct exynos_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int stub1 (struct exynos_adc*,int ) ;
 int stub2 (struct exynos_adc*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int exynos_read_s3c64xx_ts(struct iio_dev *indio_dev, int *x, int *y)
{
 struct exynos_adc *info = iio_priv(indio_dev);
 unsigned long timeout;
 int ret;

 mutex_lock(&indio_dev->mlock);
 info->read_ts = 1;

 reinit_completion(&info->completion);

 writel(ADC_S3C2410_TSC_PULL_UP_DISABLE | ADC_TSC_AUTOPST,
        ADC_V1_TSC(info->regs));


 info->data->start_conv(info, ADC_S3C2410_MUX_TS);

 timeout = wait_for_completion_timeout(&info->completion,
           EXYNOS_ADC_TIMEOUT);
 if (timeout == 0) {
  dev_warn(&indio_dev->dev, "Conversion timed out! Resetting\n");
  if (info->data->init_hw)
   info->data->init_hw(info);
  ret = -ETIMEDOUT;
 } else {
  *x = info->ts_x;
  *y = info->ts_y;
  ret = 0;
 }

 info->read_ts = 0;
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
