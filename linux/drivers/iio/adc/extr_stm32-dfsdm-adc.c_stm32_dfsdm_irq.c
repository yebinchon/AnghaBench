
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dfsdm_adc {unsigned int* buffer; int fl_id; int completion; TYPE_1__* dfsdm; } ;
struct regmap {int dummy; } ;
struct iio_dev {int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct regmap* regmap; } ;


 int DFSDM_CR2 (int ) ;
 unsigned int DFSDM_CR2_ROVRIE_MASK ;
 int DFSDM_ICR (int ) ;
 int DFSDM_ICR_CLRROVRF_MASK ;
 int DFSDM_ISR (int ) ;
 unsigned int DFSDM_ISR_REOCF_MASK ;
 unsigned int DFSDM_ISR_ROVRF_MASK ;
 int DFSDM_RDATAR (int ) ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_warn (int *,char*) ;
 struct iio_dev* iio_priv_to_dev (struct stm32_dfsdm_adc*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t stm32_dfsdm_irq(int irq, void *arg)
{
 struct stm32_dfsdm_adc *adc = arg;
 struct iio_dev *indio_dev = iio_priv_to_dev(adc);
 struct regmap *regmap = adc->dfsdm->regmap;
 unsigned int status, int_en;

 regmap_read(regmap, DFSDM_ISR(adc->fl_id), &status);
 regmap_read(regmap, DFSDM_CR2(adc->fl_id), &int_en);

 if (status & DFSDM_ISR_REOCF_MASK) {

  regmap_read(regmap, DFSDM_RDATAR(adc->fl_id), adc->buffer);
  complete(&adc->completion);
 }

 if (status & DFSDM_ISR_ROVRF_MASK) {
  if (int_en & DFSDM_CR2_ROVRIE_MASK)
   dev_warn(&indio_dev->dev, "Overrun detected\n");
  regmap_update_bits(regmap, DFSDM_ICR(adc->fl_id),
       DFSDM_ICR_CLRROVRF_MASK,
       DFSDM_ICR_CLRROVRF_MASK);
 }

 return IRQ_HANDLED;
}
