
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int size; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t buffer_size_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct tmc_drvdata *drvdata = dev_get_drvdata(dev->parent);

 return sprintf(buf, "%#x\n", drvdata->size);
}
