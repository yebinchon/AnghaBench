
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
struct TYPE_4__ {int bits; int odr; int uodr; } ;


 int EINVAL ;
 TYPE_3__* bmi160_odr_table ;
 TYPE_2__* bmi160_regs ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int bmi160_get_odr(struct bmi160_data *data, enum bmi160_sensor_type t,
     int *odr, int *uodr)
{
 int i, val, ret;

 ret = regmap_read(data->regmap, bmi160_regs[t].config, &val);
 if (ret)
  return ret;

 val &= bmi160_regs[t].config_odr_mask;

 for (i = 0; i < bmi160_odr_table[t].num; i++)
  if (val == bmi160_odr_table[t].tbl[i].bits)
   break;

 if (i >= bmi160_odr_table[t].num)
  return -EINVAL;

 *odr = bmi160_odr_table[t].tbl[i].odr;
 *uodr = bmi160_odr_table[t].tbl[i].uodr;

 return 0;
}
