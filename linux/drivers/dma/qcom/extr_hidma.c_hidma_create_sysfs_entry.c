
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct hidma_dev {TYPE_1__ ddev; } ;
struct TYPE_4__ {char* name; int mode; } ;
struct device_attribute {TYPE_2__ attr; int show; } ;


 int GFP_KERNEL ;
 struct device_attribute* devm_kmalloc (int ,int,int ) ;
 char* devm_kstrdup (int ,char*,int ) ;
 int hidma_show_values ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static struct device_attribute*
hidma_create_sysfs_entry(struct hidma_dev *dev, char *name, int mode)
{
 struct device_attribute *attrs;
 char *name_copy;

 attrs = devm_kmalloc(dev->ddev.dev, sizeof(struct device_attribute),
        GFP_KERNEL);
 if (!attrs)
  return ((void*)0);

 name_copy = devm_kstrdup(dev->ddev.dev, name, GFP_KERNEL);
 if (!name_copy)
  return ((void*)0);

 attrs->attr.name = name_copy;
 attrs->attr.mode = mode;
 attrs->show = hidma_show_values;
 sysfs_attr_init(&attrs->attr);

 return attrs;
}
