
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_adc_priv {int regmap; } ;
struct iio_dev {int dev; } ;


 int IPROC_ADC_CONTROLLER_EN ;
 int IPROC_REGCTL2 ;
 int dev_err (int *,char*,int) ;
 struct iproc_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void iproc_adc_disable(struct iio_dev *indio_dev)
{
 u32 val;
 int ret;
 struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);

 ret = regmap_read(adc_priv->regmap, IPROC_REGCTL2, &val);
 if (ret) {
  dev_err(&indio_dev->dev,
   "failed to read IPROC_REGCTL2 %d\n", ret);
  return;
 }

 val &= ~IPROC_ADC_CONTROLLER_EN;
 ret = regmap_write(adc_priv->regmap, IPROC_REGCTL2, val);
 if (ret) {
  dev_err(&indio_dev->dev,
   "failed to write IPROC_REGCTL2 %d\n", ret);
  return;
 }
}
