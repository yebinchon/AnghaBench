
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_adc_priv {int dummy; } ;
struct device {int dummy; } ;
struct iio_dev {struct device dev; } ;


 int IPROC_ANALOG_CONTROL ;
 int IPROC_AUX_DATA ;
 int IPROC_CONTROLLER_STATUS ;
 int IPROC_INTERRUPT_MASK ;
 int IPROC_INTERRUPT_STATUS ;
 int IPROC_INTERRUPT_THRES ;
 int IPROC_REGCTL1 ;
 int IPROC_REGCTL2 ;
 int IPROC_SOFT_BYPASS_CONTROL ;
 int IPROC_SOFT_BYPASS_DATA ;
 struct iproc_adc_priv* iio_priv (struct iio_dev*) ;
 int iproc_adc_dbg_reg (struct device*,struct iproc_adc_priv*,int ) ;

__attribute__((used)) static void iproc_adc_reg_dump(struct iio_dev *indio_dev)
{
 struct device *dev = &indio_dev->dev;
 struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);

 iproc_adc_dbg_reg(dev, adc_priv, IPROC_REGCTL1);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_REGCTL2);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_INTERRUPT_THRES);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_INTERRUPT_MASK);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_INTERRUPT_STATUS);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_CONTROLLER_STATUS);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_ANALOG_CONTROL);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_AUX_DATA);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_SOFT_BYPASS_CONTROL);
 iproc_adc_dbg_reg(dev, adc_priv, IPROC_SOFT_BYPASS_DATA);
}
