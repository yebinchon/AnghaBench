
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td043mtea1_panel {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct td043mtea1_panel* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t mode_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct td043mtea1_panel *lcd = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n", lcd->mode);
}
