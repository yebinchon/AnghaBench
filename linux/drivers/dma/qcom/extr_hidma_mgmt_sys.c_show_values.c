
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hidma_mgmt_dev {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {int (* get ) (struct hidma_mgmt_dev*) ;int name; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 struct hidma_mgmt_dev* dev_get_drvdata (struct device*) ;
 TYPE_2__* hidma_mgmt_files ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (char*) ;
 int stub1 (struct hidma_mgmt_dev*) ;
 int stub2 (struct hidma_mgmt_dev*) ;

__attribute__((used)) static ssize_t show_values(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct hidma_mgmt_dev *mdev = dev_get_drvdata(dev);
 unsigned int i;

 buf[0] = 0;

 for (i = 0; i < ARRAY_SIZE(hidma_mgmt_files); i++) {
  if (strcmp(attr->attr.name, hidma_mgmt_files[i].name) == 0) {
   sprintf(buf, "%d\n", hidma_mgmt_files[i].get(mdev));
   break;
  }
 }
 return strlen(buf);
}
