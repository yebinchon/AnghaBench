
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct atmel_hlcdc_dc {TYPE_1__* hlcdc; } ;
struct TYPE_2__ {int regmap; } ;


 int ATMEL_HLCDC_IDR ;
 int ATMEL_HLCDC_ISR ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void atmel_hlcdc_dc_irq_uninstall(struct drm_device *dev)
{
 struct atmel_hlcdc_dc *dc = dev->dev_private;
 unsigned int isr;

 regmap_write(dc->hlcdc->regmap, ATMEL_HLCDC_IDR, 0xffffffff);
 regmap_read(dc->hlcdc->regmap, ATMEL_HLCDC_ISR, &isr);
}
