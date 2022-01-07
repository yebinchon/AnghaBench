
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edd_device {int dummy; } ;
struct edd_attribute {int (* show ) (struct edd_device*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct edd_device*,char*) ;
 struct edd_attribute* to_edd_attr (struct attribute*) ;
 struct edd_device* to_edd_device (struct kobject*) ;

__attribute__((used)) static ssize_t
edd_attr_show(struct kobject * kobj, struct attribute *attr, char *buf)
{
 struct edd_device *dev = to_edd_device(kobj);
 struct edd_attribute *edd_attr = to_edd_attr(attr);
 ssize_t ret = -EIO;

 if (edd_attr->show)
  ret = edd_attr->show(dev, buf);
 return ret;
}
