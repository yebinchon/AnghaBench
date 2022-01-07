
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct atmel_hlcdc_layer_desc {int dummy; } ;
struct atmel_hlcdc_layer {struct regmap* regmap; struct atmel_hlcdc_layer_desc const* desc; } ;



__attribute__((used)) static inline void atmel_hlcdc_layer_init(struct atmel_hlcdc_layer *layer,
    const struct atmel_hlcdc_layer_desc *desc,
    struct regmap *regmap)
{
 layer->desc = desc;
 layer->regmap = regmap;
}
