
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int mode; } ;


 int FME_FEATURE_ID_GLOBAL_ERR ;
 int dfl_get_feature_by_id (struct device*,int ) ;
 struct device* kobj_to_dev (struct kobject*) ;

__attribute__((used)) static umode_t fme_global_err_attrs_visible(struct kobject *kobj,
         struct attribute *attr, int n)
{
 struct device *dev = kobj_to_dev(kobj);





 if (!dfl_get_feature_by_id(dev, FME_FEATURE_ID_GLOBAL_ERR))
  return 0;

 return attr->mode;
}
