
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_sensor {int page; int reg; struct pmbus_sensor* next; } ;
struct pmbus_data {struct pmbus_sensor* sensors; } ;


 int EINVAL ;
 struct pmbus_sensor* ERR_PTR (int ) ;

__attribute__((used)) static struct pmbus_sensor *pmbus_find_sensor(struct pmbus_data *data, int page,
           int reg)
{
 struct pmbus_sensor *sensor;

 for (sensor = data->sensors; sensor; sensor = sensor->next) {
  if (sensor->page == page && sensor->reg == reg)
   return sensor;
 }

 return ERR_PTR(-EINVAL);
}
