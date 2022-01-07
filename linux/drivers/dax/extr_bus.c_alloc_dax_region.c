
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int kobj; } ;
struct dax_region {unsigned long pfn_flags; int id; unsigned int align; int target_node; int kref; struct device* dev; int res; } ;


 int GFP_KERNEL ;
 int IS_ALIGNED (int ,unsigned int) ;
 int dax_region_attribute_groups ;
 int dax_region_unregister ;
 int dev_WARN (struct device*,char*) ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct dax_region*) ;
 scalar_t__ devm_add_action_or_reset (struct device*,int ,struct dax_region*) ;
 int kfree (struct dax_region*) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct dax_region* kzalloc (int,int ) ;
 int memcpy (int *,struct resource*,int) ;
 int resource_size (struct resource*) ;
 scalar_t__ sysfs_create_groups (int *,int ) ;

struct dax_region *alloc_dax_region(struct device *parent, int region_id,
  struct resource *res, int target_node, unsigned int align,
  unsigned long pfn_flags)
{
 struct dax_region *dax_region;






 if (dev_get_drvdata(parent)) {
  dev_WARN(parent, "dax core failed to setup private data\n");
  return ((void*)0);
 }

 if (!IS_ALIGNED(res->start, align)
   || !IS_ALIGNED(resource_size(res), align))
  return ((void*)0);

 dax_region = kzalloc(sizeof(*dax_region), GFP_KERNEL);
 if (!dax_region)
  return ((void*)0);

 dev_set_drvdata(parent, dax_region);
 memcpy(&dax_region->res, res, sizeof(*res));
 dax_region->pfn_flags = pfn_flags;
 kref_init(&dax_region->kref);
 dax_region->id = region_id;
 dax_region->align = align;
 dax_region->dev = parent;
 dax_region->target_node = target_node;
 if (sysfs_create_groups(&parent->kobj, dax_region_attribute_groups)) {
  kfree(dax_region);
  return ((void*)0);
 }

 kref_get(&dax_region->kref);
 if (devm_add_action_or_reset(parent, dax_region_unregister, dax_region))
  return ((void*)0);
 return dax_region;
}
