
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_device {size_t mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct pti_device* dev_get_drvdata (struct device*) ;
 int * pti_mode ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t mode_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct pti_device *pti = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%d\n", pti_mode[pti->mode]);
}
