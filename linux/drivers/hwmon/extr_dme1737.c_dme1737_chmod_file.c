
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {int kobj; } ;
struct attribute {int name; } ;


 int dev_warn (struct device*,char*,int ) ;
 scalar_t__ sysfs_chmod_file (int *,struct attribute*,int ) ;

__attribute__((used)) static void dme1737_chmod_file(struct device *dev,
          struct attribute *attr, umode_t mode)
{
 if (sysfs_chmod_file(&dev->kobj, attr, mode)) {
  dev_warn(dev, "Failed to change permissions of %s.\n",
    attr->name);
 }
}
