
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int newkey ;


 int FAN_ID_FMT ;
 int PAGE_SIZE ;
 int applesmc_read_key (char*,char*,int) ;
 int scnprintf (char*,int,int ,int ) ;
 int snprintf (char*,int ,char*,char*) ;
 int to_index (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_show_fan_position(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 int ret;
 char newkey[5];
 u8 buffer[17];

 scnprintf(newkey, sizeof(newkey), FAN_ID_FMT, to_index(attr));

 ret = applesmc_read_key(newkey, buffer, 16);
 buffer[16] = 0;

 if (ret)
  return ret;
 else
  return snprintf(sysfsbuf, PAGE_SIZE, "%s\n", buffer+4);
}
