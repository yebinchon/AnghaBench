
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rdev; } ;
struct device {int release; int groups; struct device* parent; int class; int * bus; int devt; } ;
struct dev_pagemap {int dummy; } ;
struct dev_dax {int target_node; struct dax_region* region; struct dax_device* dax_dev; struct device dev; int pgmap; } ;
struct dax_region {struct device* dev; int id; int kref; int target_node; } ;
struct dax_device {int dummy; } ;
typedef enum dev_dax_subsys { ____Placeholder_dev_dax_subsys } dev_dax_subsys ;


 int DAXDEV_F_SYNC ;
 int DEV_DAX_BUS ;
 int EINVAL ;
 int ENOMEM ;
 struct dev_dax* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct dax_device* alloc_dax (struct dev_dax*,int *,int *,int ) ;
 int dax_attribute_groups ;
 int dax_bus_type ;
 int dax_class ;
 struct inode* dax_inode (struct dax_device*) ;
 int dev_dax_release ;
 int dev_set_name (struct device*,char*,int ,int) ;
 int device_add (struct device*) ;
 int device_initialize (struct device*) ;
 int devm_add_action_or_reset (struct device*,int ,struct device*) ;
 int kfree (struct dev_dax*) ;
 int kill_dax (struct dax_device*) ;
 int kill_dev_dax (struct dev_dax*) ;
 int kref_get (int *) ;
 struct dev_dax* kzalloc (int,int ) ;
 int memcpy (int *,struct dev_pagemap*,int) ;
 int put_device (struct device*) ;
 int unregister_dev_dax ;

struct dev_dax *__devm_create_dev_dax(struct dax_region *dax_region, int id,
  struct dev_pagemap *pgmap, enum dev_dax_subsys subsys)
{
 struct device *parent = dax_region->dev;
 struct dax_device *dax_dev;
 struct dev_dax *dev_dax;
 struct inode *inode;
 struct device *dev;
 int rc = -ENOMEM;

 if (id < 0)
  return ERR_PTR(-EINVAL);

 dev_dax = kzalloc(sizeof(*dev_dax), GFP_KERNEL);
 if (!dev_dax)
  return ERR_PTR(-ENOMEM);

 memcpy(&dev_dax->pgmap, pgmap, sizeof(*pgmap));





 dax_dev = alloc_dax(dev_dax, ((void*)0), ((void*)0), DAXDEV_F_SYNC);
 if (!dax_dev)
  goto err;


 kill_dax(dax_dev);


 dev = &dev_dax->dev;
 device_initialize(dev);

 dev_dax->dax_dev = dax_dev;
 dev_dax->region = dax_region;
 dev_dax->target_node = dax_region->target_node;
 kref_get(&dax_region->kref);

 inode = dax_inode(dax_dev);
 dev->devt = inode->i_rdev;
 if (subsys == DEV_DAX_BUS)
  dev->bus = &dax_bus_type;
 else
  dev->class = dax_class;
 dev->parent = parent;
 dev->groups = dax_attribute_groups;
 dev->release = dev_dax_release;
 dev_set_name(dev, "dax%d.%d", dax_region->id, id);

 rc = device_add(dev);
 if (rc) {
  kill_dev_dax(dev_dax);
  put_device(dev);
  return ERR_PTR(rc);
 }

 rc = devm_add_action_or_reset(dax_region->dev, unregister_dev_dax, dev);
 if (rc)
  return ERR_PTR(rc);

 return dev_dax;

 err:
 kfree(dev_dax);

 return ERR_PTR(rc);
}
