
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {int fallback_sz; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct omap_sham_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fallback_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct omap_sham_dev *dd = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", dd->fallback_sz);
}
