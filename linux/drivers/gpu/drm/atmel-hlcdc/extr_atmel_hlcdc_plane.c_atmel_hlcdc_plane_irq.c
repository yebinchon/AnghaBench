
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_6__ {struct atmel_hlcdc_layer_desc* desc; } ;
struct atmel_hlcdc_plane {TYPE_2__ base; TYPE_3__ layer; } ;
struct atmel_hlcdc_layer_desc {int name; } ;
struct TYPE_4__ {int dev; } ;


 int ATMEL_HLCDC_LAYER_ISR ;
 int ATMEL_HLCDC_LAYER_OVR_IRQ (int) ;
 int atmel_hlcdc_layer_read_reg (TYPE_3__*,int ) ;
 int dev_dbg (int ,char*,int ) ;

void atmel_hlcdc_plane_irq(struct atmel_hlcdc_plane *plane)
{
 const struct atmel_hlcdc_layer_desc *desc = plane->layer.desc;
 u32 isr;

 isr = atmel_hlcdc_layer_read_reg(&plane->layer, ATMEL_HLCDC_LAYER_ISR);






 if (isr &
     (ATMEL_HLCDC_LAYER_OVR_IRQ(0) | ATMEL_HLCDC_LAYER_OVR_IRQ(1) |
      ATMEL_HLCDC_LAYER_OVR_IRQ(2)))
  dev_dbg(plane->base.dev->dev, "overrun on plane %s\n",
   desc->name);
}
