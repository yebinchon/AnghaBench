
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct atmel_hlcdc_layer {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {scalar_t__ regs_offset; } ;


 int regmap_read (int ,scalar_t__,int *) ;

__attribute__((used)) static inline u32 atmel_hlcdc_layer_read_reg(struct atmel_hlcdc_layer *layer,
          unsigned int reg)
{
 u32 val;

 regmap_read(layer->regmap, layer->desc->regs_offset + reg, &val);

 return val;
}
