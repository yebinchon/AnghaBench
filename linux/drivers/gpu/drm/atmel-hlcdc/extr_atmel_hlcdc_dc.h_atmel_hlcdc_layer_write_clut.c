
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct atmel_hlcdc_layer {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {scalar_t__ clut_offset; } ;


 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void atmel_hlcdc_layer_write_clut(struct atmel_hlcdc_layer *layer,
      unsigned int c, u32 val)
{
 regmap_write(layer->regmap,
       layer->desc->clut_offset + c * sizeof(u32),
       val);
}
