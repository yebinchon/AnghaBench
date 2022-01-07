
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_device {int lpp_dest_mask; int lpp_dest; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BIT (int) ;
 int EINVAL ;
 struct pti_device* dev_get_drvdata (struct device*) ;
 int lpp_dest_str ;
 int sysfs_match_string (int ,char const*) ;

__attribute__((used)) static ssize_t lpp_dest_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t size)
{
 struct pti_device *pti = dev_get_drvdata(dev);
 int i;

 i = sysfs_match_string(lpp_dest_str, buf);
 if (i < 0)
  return i;

 if (!(pti->lpp_dest_mask & BIT(i)))
  return -EINVAL;

 pti->lpp_dest = i;
 return size;
}
