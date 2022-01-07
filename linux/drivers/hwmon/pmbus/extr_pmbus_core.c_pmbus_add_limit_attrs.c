
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_sensor_attr {int nlimit; int sfunc; scalar_t__ sbase; scalar_t__ compare; scalar_t__ update; int class; struct pmbus_limit_attr* limit; } ;
struct pmbus_sensor {int dummy; } ;
struct pmbus_limit_attr {scalar_t__ sbit; scalar_t__ low; int alarm; scalar_t__ update; int reg; int attr; } ;
struct pmbus_driver_info {int* func; } ;
struct pmbus_data {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ENOMEM ;
 int pmbus_add_boolean (struct pmbus_data*,char const*,int ,int,struct pmbus_sensor*,struct pmbus_sensor*,scalar_t__,scalar_t__) ;
 struct pmbus_sensor* pmbus_add_sensor (struct pmbus_data*,char const*,int ,int,int,int ,int ,int,int,int) ;
 scalar_t__ pmbus_check_word_register (struct i2c_client*,int,int ) ;

__attribute__((used)) static int pmbus_add_limit_attrs(struct i2c_client *client,
     struct pmbus_data *data,
     const struct pmbus_driver_info *info,
     const char *name, int index, int page,
     struct pmbus_sensor *base,
     const struct pmbus_sensor_attr *attr)
{
 const struct pmbus_limit_attr *l = attr->limit;
 int nlimit = attr->nlimit;
 int have_alarm = 0;
 int i, ret;
 struct pmbus_sensor *curr;

 for (i = 0; i < nlimit; i++) {
  if (pmbus_check_word_register(client, page, l->reg)) {
   curr = pmbus_add_sensor(data, name, l->attr, index,
      page, l->reg, attr->class,
      attr->update || l->update,
      0, 1);
   if (!curr)
    return -ENOMEM;
   if (l->sbit && (info->func[page] & attr->sfunc)) {
    ret = pmbus_add_boolean(data, name,
     l->alarm, index,
     attr->compare ? l->low ? curr : base
            : ((void*)0),
     attr->compare ? l->low ? base : curr
            : ((void*)0),
     attr->sbase + page, l->sbit);
    if (ret)
     return ret;
    have_alarm = 1;
   }
  }
  l++;
 }
 return have_alarm;
}
