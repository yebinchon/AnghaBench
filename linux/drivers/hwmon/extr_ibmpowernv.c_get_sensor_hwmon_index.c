
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sensor_data {scalar_t__ opal_index; scalar_t__ type; int hwmon_index; } ;
struct TYPE_2__ {int hwmon_index; } ;


 scalar_t__ INVALID_INDEX ;
 TYPE_1__* sensor_groups ;

__attribute__((used)) static u32 get_sensor_hwmon_index(struct sensor_data *sdata,
      struct sensor_data *sdata_table, int count)
{
 int i;




 if (sdata->opal_index != INVALID_INDEX) {
  for (i = 0; i < count; i++)
   if (sdata_table[i].opal_index == sdata->opal_index &&
       sdata_table[i].type == sdata->type)
    return sdata_table[i].hwmon_index;
 }
 return ++sensor_groups[sdata->type].hwmon_index;
}
