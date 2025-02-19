
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_als {int lm3533; } ;
struct iio_dev {int dev; } ;


 int LM3533_REG_ALS_READ_ADC_AVERAGE ;
 int LM3533_REG_ALS_READ_ADC_RAW ;
 int dev_err (int *,char*) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 int lm3533_read (int ,int,int*) ;

__attribute__((used)) static int lm3533_als_get_adc(struct iio_dev *indio_dev, bool average,
        int *adc)
{
 struct lm3533_als *als = iio_priv(indio_dev);
 u8 reg;
 u8 val;
 int ret;

 if (average)
  reg = LM3533_REG_ALS_READ_ADC_AVERAGE;
 else
  reg = LM3533_REG_ALS_READ_ADC_RAW;

 ret = lm3533_read(als->lm3533, reg, &val);
 if (ret) {
  dev_err(&indio_dev->dev, "failed to read adc\n");
  return ret;
 }

 *adc = val;

 return 0;
}
