
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_hlcdc_layer {TYPE_1__* desc; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ ATMEL_HLCDC_BASE_LAYER ;
 scalar_t__ ATMEL_HLCDC_CURSOR_LAYER ;
 scalar_t__ ATMEL_HLCDC_OVERLAY_LAYER ;
 int atmel_hlcdc_layer_to_plane (struct atmel_hlcdc_layer*) ;
 int atmel_hlcdc_plane_irq (int ) ;

__attribute__((used)) static void atmel_hlcdc_layer_irq(struct atmel_hlcdc_layer *layer)
{
 if (!layer)
  return;

 if (layer->desc->type == ATMEL_HLCDC_BASE_LAYER ||
     layer->desc->type == ATMEL_HLCDC_OVERLAY_LAYER ||
     layer->desc->type == ATMEL_HLCDC_CURSOR_LAYER)
  atmel_hlcdc_plane_irq(atmel_hlcdc_layer_to_plane(layer));
}
