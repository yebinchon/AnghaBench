
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct atmel_hlcdc_layer {TYPE_1__* desc; } ;
struct TYPE_2__ {scalar_t__ cfgs_offset; } ;


 int atmel_hlcdc_layer_read_reg (struct atmel_hlcdc_layer*,scalar_t__) ;

__attribute__((used)) static inline u32 atmel_hlcdc_layer_read_cfg(struct atmel_hlcdc_layer *layer,
          unsigned int cfgid)
{
 return atmel_hlcdc_layer_read_reg(layer,
       layer->desc->cfgs_offset +
       (cfgid * sizeof(u32)));
}
