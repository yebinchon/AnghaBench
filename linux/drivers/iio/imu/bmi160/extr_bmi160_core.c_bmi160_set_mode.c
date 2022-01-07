
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bmi160_data {int regmap; } ;
typedef enum bmi160_sensor_type { ____Placeholder_bmi160_sensor_type } bmi160_sensor_type ;
struct TYPE_2__ {int pmu_cmd_suspend; int pmu_cmd_normal; } ;


 int BMI160_REG_CMD ;
 scalar_t__* bmi160_pmu_time ;
 TYPE_1__* bmi160_regs ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static
int bmi160_set_mode(struct bmi160_data *data, enum bmi160_sensor_type t,
      bool mode)
{
 int ret;
 u8 cmd;

 if (mode)
  cmd = bmi160_regs[t].pmu_cmd_normal;
 else
  cmd = bmi160_regs[t].pmu_cmd_suspend;

 ret = regmap_write(data->regmap, BMI160_REG_CMD, cmd);
 if (ret)
  return ret;

 usleep_range(bmi160_pmu_time[t], bmi160_pmu_time[t] + 1000);

 return 0;
}
