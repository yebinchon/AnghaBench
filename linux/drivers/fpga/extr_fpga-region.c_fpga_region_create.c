
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int of_node; struct device* parent; int class; } ;
struct fpga_region {int (* get_bridges ) (struct fpga_region*) ;TYPE_1__ dev; int bridge_list; int mutex; struct fpga_manager* mgr; } ;
struct fpga_manager {int dummy; } ;
struct device {int of_node; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int fpga_region_class ;
 int fpga_region_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct fpga_region*) ;
 struct fpga_region* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct fpga_region
*fpga_region_create(struct device *dev,
      struct fpga_manager *mgr,
      int (*get_bridges)(struct fpga_region *))
{
 struct fpga_region *region;
 int id, ret = 0;

 region = kzalloc(sizeof(*region), GFP_KERNEL);
 if (!region)
  return ((void*)0);

 id = ida_simple_get(&fpga_region_ida, 0, 0, GFP_KERNEL);
 if (id < 0)
  goto err_free;

 region->mgr = mgr;
 region->get_bridges = get_bridges;
 mutex_init(&region->mutex);
 INIT_LIST_HEAD(&region->bridge_list);

 device_initialize(&region->dev);
 region->dev.class = fpga_region_class;
 region->dev.parent = dev;
 region->dev.of_node = dev->of_node;
 region->dev.id = id;

 ret = dev_set_name(&region->dev, "region%d", id);
 if (ret)
  goto err_remove;

 return region;

err_remove:
 ida_simple_remove(&fpga_region_ida, id);
err_free:
 kfree(region);

 return ((void*)0);
}
