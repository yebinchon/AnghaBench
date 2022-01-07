
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct cpcap_adc {int done; int wq_data_avail; int reg; } ;
typedef int irqreturn_t ;


 int CPCAP_BIT_ADTRIG_DIS ;
 int CPCAP_REG_ADCC2 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct cpcap_adc* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t cpcap_adc_irq_thread(int irq, void *data)
{
 struct iio_dev *indio_dev = data;
 struct cpcap_adc *ddata = iio_priv(indio_dev);
 int error;

 error = regmap_update_bits(ddata->reg, CPCAP_REG_ADCC2,
       CPCAP_BIT_ADTRIG_DIS,
       CPCAP_BIT_ADTRIG_DIS);
 if (error)
  return IRQ_NONE;

 ddata->done = 1;
 wake_up_interruptible(&ddata->wq_data_avail);

 return IRQ_HANDLED;
}
