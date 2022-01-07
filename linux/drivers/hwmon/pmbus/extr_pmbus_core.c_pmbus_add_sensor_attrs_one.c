
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_sensor_attr {int gbit; scalar_t__ sfunc; int class; int reg; scalar_t__ label; } ;
struct pmbus_sensor {int dummy; } ;
struct pmbus_driver_info {int dummy; } ;
struct pmbus_data {scalar_t__ has_status_word; } ;
struct i2c_client {int dummy; } ;


 int ENOMEM ;
 scalar_t__ PB_STATUS_BASE ;
 int pmbus_add_boolean (struct pmbus_data*,char const*,char*,int,int *,int *,scalar_t__,int) ;
 int pmbus_add_label (struct pmbus_data*,char const*,int,scalar_t__,int) ;
 int pmbus_add_limit_attrs (struct i2c_client*,struct pmbus_data*,struct pmbus_driver_info const*,char const*,int,int,struct pmbus_sensor*,struct pmbus_sensor_attr const*) ;
 struct pmbus_sensor* pmbus_add_sensor (struct pmbus_data*,char const*,char*,int,int,int ,int ,int,int,int) ;
 scalar_t__ pmbus_check_status_register (struct i2c_client*,int) ;

__attribute__((used)) static int pmbus_add_sensor_attrs_one(struct i2c_client *client,
          struct pmbus_data *data,
          const struct pmbus_driver_info *info,
          const char *name,
          int index, int page,
          const struct pmbus_sensor_attr *attr,
          bool paged)
{
 struct pmbus_sensor *base;
 bool upper = !!(attr->gbit & 0xff00);
 int ret;

 if (attr->label) {
  ret = pmbus_add_label(data, name, index, attr->label,
          paged ? page + 1 : 0);
  if (ret)
   return ret;
 }
 base = pmbus_add_sensor(data, name, "input", index, page, attr->reg,
    attr->class, 1, 1, 1);
 if (!base)
  return -ENOMEM;
 if (attr->sfunc) {
  ret = pmbus_add_limit_attrs(client, data, info, name,
         index, page, base, attr);
  if (ret < 0)
   return ret;






  if (!ret && attr->gbit &&
      (!upper || (upper && data->has_status_word)) &&
      pmbus_check_status_register(client, page)) {
   ret = pmbus_add_boolean(data, name, "alarm", index,
      ((void*)0), ((void*)0),
      PB_STATUS_BASE + page,
      attr->gbit);
   if (ret)
    return ret;
  }
 }
 return 0;
}
