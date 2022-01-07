
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dimm_info {char* label; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int snprintf (char*,int,char*,char*) ;
 struct dimm_info* to_dimm (struct device*) ;

__attribute__((used)) static ssize_t dimmdev_label_show(struct device *dev,
      struct device_attribute *mattr, char *data)
{
 struct dimm_info *dimm = to_dimm(dev);


 if (!dimm->label[0])
  return 0;

 return snprintf(data, sizeof(dimm->label) + 1, "%s\n", dimm->label);
}
