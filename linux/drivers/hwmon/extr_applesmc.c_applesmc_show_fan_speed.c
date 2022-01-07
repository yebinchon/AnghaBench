
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int newkey ;


 int PAGE_SIZE ;
 int applesmc_read_key (char*,int*,int) ;
 int * fan_speed_fmt ;
 int scnprintf (char*,int,int ,int ) ;
 int snprintf (char*,int ,char*,unsigned int) ;
 int to_index (struct device_attribute*) ;
 size_t to_option (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_show_fan_speed(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 int ret;
 unsigned int speed = 0;
 char newkey[5];
 u8 buffer[2];

 scnprintf(newkey, sizeof(newkey), fan_speed_fmt[to_option(attr)],
    to_index(attr));

 ret = applesmc_read_key(newkey, buffer, 2);
 speed = ((buffer[0] << 8 | buffer[1]) >> 2);

 if (ret)
  return ret;
 else
  return snprintf(sysfsbuf, PAGE_SIZE, "%u\n", speed);
}
