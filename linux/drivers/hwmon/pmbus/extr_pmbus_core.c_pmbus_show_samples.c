
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmbus_samples_reg {TYPE_1__* attr; int page; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {int reg; } ;


 int PAGE_SIZE ;
 int _pmbus_read_word_data (struct i2c_client*,int ,int ) ;
 int snprintf (char*,int ,char*,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct pmbus_samples_reg* to_samples_reg (struct device_attribute*) ;

__attribute__((used)) static ssize_t pmbus_show_samples(struct device *dev,
      struct device_attribute *devattr, char *buf)
{
 int val;
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct pmbus_samples_reg *reg = to_samples_reg(devattr);

 val = _pmbus_read_word_data(client, reg->page, reg->attr->reg);
 if (val < 0)
  return val;

 return snprintf(buf, PAGE_SIZE, "%d\n", val);
}
