
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bmi160_data {int regmap; } ;
typedef enum bmi160_sensor_type { ____Placeholder_bmi160_sensor_type } bmi160_sensor_type ;
struct TYPE_6__ {int num; TYPE_1__* tbl; } ;
struct TYPE_5__ {int config_odr_mask; int config; } ;
struct TYPE_4__ {int odr; int uodr; int bits; } ;


 int EINVAL ;
 TYPE_3__* bmi160_odr_table ;
 TYPE_2__* bmi160_regs ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static
int bmi160_set_odr(struct bmi160_data *data, enum bmi160_sensor_type t,
     int odr, int uodr)
{
 int i;

 for (i = 0; i < bmi160_odr_table[t].num; i++)
  if (bmi160_odr_table[t].tbl[i].odr == odr &&
      bmi160_odr_table[t].tbl[i].uodr == uodr)
   break;

 if (i >= bmi160_odr_table[t].num)
  return -EINVAL;

 return regmap_update_bits(data->regmap,
      bmi160_regs[t].config,
      bmi160_regs[t].config_odr_mask,
      bmi160_odr_table[t].tbl[i].bits);
}
