
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct atmel_hlcdc_dc {TYPE_1__* hlcdc; scalar_t__* layers; } ;
struct TYPE_2__ {int regmap; } ;


 int ATMEL_HLCDC_IER ;
 unsigned int ATMEL_HLCDC_LAYER_STATUS (int) ;
 int ATMEL_HLCDC_MAX_LAYERS ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int atmel_hlcdc_dc_irq_postinstall(struct drm_device *dev)
{
 struct atmel_hlcdc_dc *dc = dev->dev_private;
 unsigned int cfg = 0;
 int i;


 for (i = 0; i < ATMEL_HLCDC_MAX_LAYERS; i++) {
  if (dc->layers[i])
   cfg |= ATMEL_HLCDC_LAYER_STATUS(i);
 }

 regmap_write(dc->hlcdc->regmap, ATMEL_HLCDC_IER, cfg);

 return 0;
}
