
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct atmel_hlcdc_dc {int * layers; int crtc; TYPE_1__* hlcdc; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int regmap; } ;


 int ATMEL_HLCDC_IMR ;
 int ATMEL_HLCDC_ISR ;
 unsigned long ATMEL_HLCDC_LAYER_STATUS (int) ;
 int ATMEL_HLCDC_MAX_LAYERS ;
 unsigned long ATMEL_HLCDC_SOF ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atmel_hlcdc_crtc_irq (int ) ;
 int atmel_hlcdc_layer_irq (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t atmel_hlcdc_dc_irq_handler(int irq, void *data)
{
 struct drm_device *dev = data;
 struct atmel_hlcdc_dc *dc = dev->dev_private;
 unsigned long status;
 unsigned int imr, isr;
 int i;

 regmap_read(dc->hlcdc->regmap, ATMEL_HLCDC_IMR, &imr);
 regmap_read(dc->hlcdc->regmap, ATMEL_HLCDC_ISR, &isr);
 status = imr & isr;
 if (!status)
  return IRQ_NONE;

 if (status & ATMEL_HLCDC_SOF)
  atmel_hlcdc_crtc_irq(dc->crtc);

 for (i = 0; i < ATMEL_HLCDC_MAX_LAYERS; i++) {
  if (ATMEL_HLCDC_LAYER_STATUS(i) & status)
   atmel_hlcdc_layer_irq(dc->layers[i]);
 }

 return IRQ_HANDLED;
}
