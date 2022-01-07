
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {scalar_t__ external_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 struct fsi_master_gpio* dev_get_drvdata (struct device*) ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t external_mode_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fsi_master_gpio *master = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE - 1, "%u\n",
   master->external_mode ? 1 : 0);
}
