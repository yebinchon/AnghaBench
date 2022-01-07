
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_samples_attr {int reg; } ;
struct pmbus_driver_info {int* func; } ;
struct pmbus_data {struct pmbus_driver_info* info; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (struct pmbus_samples_attr*) ;
 int PMBUS_HAVE_SAMPLES ;
 int pmbus_add_samples_attr (struct pmbus_data*,int ,struct pmbus_samples_attr*) ;
 int pmbus_check_word_register (struct i2c_client*,int ,int ) ;
 struct pmbus_samples_attr* pmbus_samples_registers ;

__attribute__((used)) static int pmbus_add_samples_attributes(struct i2c_client *client,
     struct pmbus_data *data)
{
 const struct pmbus_driver_info *info = data->info;
 int s;

 if (!(info->func[0] & PMBUS_HAVE_SAMPLES))
  return 0;

 for (s = 0; s < ARRAY_SIZE(pmbus_samples_registers); s++) {
  struct pmbus_samples_attr *attr;
  int ret;

  attr = &pmbus_samples_registers[s];
  if (!pmbus_check_word_register(client, 0, attr->reg))
   continue;

  ret = pmbus_add_samples_attr(data, 0, attr);
  if (ret)
   return ret;
 }

 return 0;
}
