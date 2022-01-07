
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidma_dev {int chidx; } ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hidma_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t hidma_show_values(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct hidma_dev *mdev = dev_get_drvdata(dev);

 buf[0] = 0;

 if (strcmp(attr->attr.name, "chid") == 0)
  sprintf(buf, "%d\n", mdev->chidx);

 return strlen(buf);
}
