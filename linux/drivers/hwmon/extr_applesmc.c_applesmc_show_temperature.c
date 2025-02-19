
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s16 ;
struct TYPE_2__ {char** index; } ;


 int PAGE_SIZE ;
 int applesmc_read_s16 (char const*,int*) ;
 TYPE_1__ smcreg ;
 int snprintf (char*,int ,char*,int) ;
 size_t to_index (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_show_temperature(struct device *dev,
   struct device_attribute *devattr, char *sysfsbuf)
{
 const char *key = smcreg.index[to_index(devattr)];
 int ret;
 s16 value;
 int temp;

 ret = applesmc_read_s16(key, &value);
 if (ret)
  return ret;

 temp = 250 * (value >> 6);

 return snprintf(sysfsbuf, PAGE_SIZE, "%d\n", temp);
}
