
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char** index; } ;


 int PAGE_SIZE ;
 TYPE_1__ smcreg ;
 int snprintf (char*,int ,char*,char const*) ;
 size_t to_index (struct device_attribute*) ;

__attribute__((used)) static ssize_t applesmc_show_sensor_label(struct device *dev,
   struct device_attribute *devattr, char *sysfsbuf)
{
 const char *key = smcreg.index[to_index(devattr)];

 return snprintf(sysfsbuf, PAGE_SIZE, "%s\n", key);
}
