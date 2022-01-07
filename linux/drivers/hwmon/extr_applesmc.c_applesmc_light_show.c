
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct applesmc_entry {int len; } ;
typedef int ssize_t ;
typedef int __be16 ;


 int ENXIO ;
 scalar_t__ IS_ERR (struct applesmc_entry const*) ;
 int LIGHT_SENSOR_LEFT_KEY ;
 int LIGHT_SENSOR_RIGHT_KEY ;
 int PAGE_SIZE ;
 int PTR_ERR (struct applesmc_entry const*) ;
 struct applesmc_entry* applesmc_get_entry_by_key (int ) ;
 int applesmc_read_key (int ,int*,int) ;
 int be16_to_cpu (int ) ;
 int pr_info (char*,int) ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t applesmc_light_show(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 const struct applesmc_entry *entry;
 static int data_length;
 int ret;
 u8 left = 0, right = 0;
 u8 buffer[10];

 if (!data_length) {
  entry = applesmc_get_entry_by_key(LIGHT_SENSOR_LEFT_KEY);
  if (IS_ERR(entry))
   return PTR_ERR(entry);
  if (entry->len > 10)
   return -ENXIO;
  data_length = entry->len;
  pr_info("light sensor data length set to %d\n", data_length);
 }

 ret = applesmc_read_key(LIGHT_SENSOR_LEFT_KEY, buffer, data_length);

 if (data_length == 10) {
  left = be16_to_cpu(*(__be16 *)(buffer + 6)) >> 2;
  goto out;
 }
 left = buffer[2];
 if (ret)
  goto out;
 ret = applesmc_read_key(LIGHT_SENSOR_RIGHT_KEY, buffer, data_length);
 right = buffer[2];

out:
 if (ret)
  return ret;
 else
  return snprintf(sysfsbuf, PAGE_SIZE, "(%d,%d)\n", left, right);
}
