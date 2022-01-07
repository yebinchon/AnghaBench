
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpr0521_data {int regmap; } ;
struct TYPE_4__ {int mask; int shift; TYPE_1__* gain; int reg; } ;
struct TYPE_3__ {int scale; int uscale; } ;


 int regmap_read (int ,int ,int*) ;
 TYPE_2__* rpr0521_gain ;

__attribute__((used)) static int rpr0521_get_gain(struct rpr0521_data *data, int chan,
       int *val, int *val2)
{
 int ret, reg, idx;

 ret = regmap_read(data->regmap, rpr0521_gain[chan].reg, &reg);
 if (ret < 0)
  return ret;

 idx = (rpr0521_gain[chan].mask & reg) >> rpr0521_gain[chan].shift;
 *val = rpr0521_gain[chan].gain[idx].scale;
 *val2 = rpr0521_gain[chan].gain[idx].uscale;

 return 0;
}
