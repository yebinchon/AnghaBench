
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {unsigned long key_count; } ;


 size_t EINVAL ;
 unsigned long key_at_index ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 TYPE_1__ smcreg ;

__attribute__((used)) static ssize_t applesmc_key_at_index_store(struct device *dev,
 struct device_attribute *attr, const char *sysfsbuf, size_t count)
{
 unsigned long newkey;

 if (kstrtoul(sysfsbuf, 10, &newkey) < 0
     || newkey >= smcreg.key_count)
  return -EINVAL;

 key_at_index = newkey;
 return count;
}
