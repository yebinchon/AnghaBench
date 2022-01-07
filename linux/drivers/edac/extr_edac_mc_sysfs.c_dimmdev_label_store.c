
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dimm_info {char* label; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int strncpy (char*,char const*,size_t) ;
 struct dimm_info* to_dimm (struct device*) ;

__attribute__((used)) static ssize_t dimmdev_label_store(struct device *dev,
       struct device_attribute *mattr,
       const char *data,
       size_t count)
{
 struct dimm_info *dimm = to_dimm(dev);
 size_t copy_count = count;

 if (count == 0)
  return -EINVAL;

 if (data[count - 1] == '\0' || data[count - 1] == '\n')
  copy_count -= 1;

 if (copy_count == 0 || copy_count >= sizeof(dimm->label))
  return -EINVAL;

 strncpy(dimm->label, data, copy_count);
 dimm->label[copy_count] = '\0';

 return count;
}
