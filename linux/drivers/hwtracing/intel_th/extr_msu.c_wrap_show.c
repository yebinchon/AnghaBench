
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int wrap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct msc* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
wrap_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct msc *msc = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%d\n", msc->wrap);
}
