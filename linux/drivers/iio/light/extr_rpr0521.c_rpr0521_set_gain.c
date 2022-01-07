
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpr0521_data {int regmap; } ;
struct TYPE_4__ {int size; int shift; int mask; int reg; TYPE_1__* gain; } ;
struct TYPE_3__ {int scale; int uscale; } ;


 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int) ;
 TYPE_2__* rpr0521_gain ;

__attribute__((used)) static int rpr0521_set_gain(struct rpr0521_data *data, int chan,
       int val, int val2)
{
 int i, idx = -EINVAL;


 for (i = 0; i < rpr0521_gain[chan].size; i++)
  if (val == rpr0521_gain[chan].gain[i].scale &&
      val2 == rpr0521_gain[chan].gain[i].uscale) {
   idx = i;
   break;
  }

 if (idx < 0)
  return idx;

 return regmap_update_bits(data->regmap, rpr0521_gain[chan].reg,
      rpr0521_gain[chan].mask,
      idx << rpr0521_gain[chan].shift);
}
