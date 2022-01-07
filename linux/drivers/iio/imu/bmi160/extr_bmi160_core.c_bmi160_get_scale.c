
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bmi160_data {int regmap; } ;
typedef enum bmi160_sensor_type { ____Placeholder_bmi160_sensor_type } bmi160_sensor_type ;
struct TYPE_6__ {int range; } ;
struct TYPE_5__ {int num; TYPE_1__* tbl; } ;
struct TYPE_4__ {int bits; int uscale; } ;


 int EINVAL ;
 TYPE_3__* bmi160_regs ;
 TYPE_2__* bmi160_scale_table ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static
int bmi160_get_scale(struct bmi160_data *data, enum bmi160_sensor_type t,
       int *uscale)
{
 int i, ret, val;

 ret = regmap_read(data->regmap, bmi160_regs[t].range, &val);
 if (ret)
  return ret;

 for (i = 0; i < bmi160_scale_table[t].num; i++)
  if (bmi160_scale_table[t].tbl[i].bits == val) {
   *uscale = bmi160_scale_table[t].tbl[i].uscale;
   return 0;
  }

 return -EINVAL;
}
