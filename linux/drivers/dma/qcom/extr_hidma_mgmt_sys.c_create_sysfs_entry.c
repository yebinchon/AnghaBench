
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hidma_mgmt_dev {TYPE_1__* pdev; } ;
struct TYPE_4__ {char* name; int mode; } ;
struct device_attribute {TYPE_2__ attr; int store; int show; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int device_create_file (int *,struct device_attribute*) ;
 struct device_attribute* devm_kmalloc (int *,int,int ) ;
 char* devm_kstrdup (int *,char*,int ) ;
 int set_values ;
 int show_values ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static int create_sysfs_entry(struct hidma_mgmt_dev *dev, char *name, int mode)
{
 struct device_attribute *attrs;
 char *name_copy;

 attrs = devm_kmalloc(&dev->pdev->dev,
        sizeof(struct device_attribute), GFP_KERNEL);
 if (!attrs)
  return -ENOMEM;

 name_copy = devm_kstrdup(&dev->pdev->dev, name, GFP_KERNEL);
 if (!name_copy)
  return -ENOMEM;

 attrs->attr.name = name_copy;
 attrs->attr.mode = mode;
 attrs->show = show_values;
 attrs->store = set_values;
 sysfs_attr_init(&attrs->attr);

 return device_create_file(&dev->pdev->dev, attrs);
}
