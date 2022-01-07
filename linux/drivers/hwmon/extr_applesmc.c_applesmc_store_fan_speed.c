
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int newkey ;


 int EINVAL ;
 int applesmc_write_key (char*,unsigned long*,int) ;
 int * fan_speed_fmt ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int scnprintf (char*,int,int ,int ) ;
 int to_index (struct device_attribute*) ;
 size_t to_option (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_store_fan_speed(struct device *dev,
     struct device_attribute *attr,
     const char *sysfsbuf, size_t count)
{
 int ret;
 unsigned long speed;
 char newkey[5];
 u8 buffer[2];

 if (kstrtoul(sysfsbuf, 10, &speed) < 0 || speed >= 0x4000)
  return -EINVAL;

 scnprintf(newkey, sizeof(newkey), fan_speed_fmt[to_option(attr)],
    to_index(attr));

 buffer[0] = (speed >> 6) & 0xff;
 buffer[1] = (speed << 2) & 0xff;
 ret = applesmc_write_key(newkey, buffer, 2);

 if (ret)
  return ret;
 else
  return count;
}
