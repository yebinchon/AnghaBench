
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fpga_manager_ops {int groups; scalar_t__ write_sg; scalar_t__ write; int write_init; int state; int write_complete; } ;
struct TYPE_3__ {int id; int of_node; struct device* parent; int groups; int class; } ;
struct fpga_manager {char const* name; TYPE_1__ dev; void* priv; struct fpga_manager_ops const* mops; int ref_mutex; } ;
struct device {int of_node; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int fpga_mgr_class ;
 int fpga_mgr_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct fpga_manager*) ;
 struct fpga_manager* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int strlen (char const*) ;

struct fpga_manager *fpga_mgr_create(struct device *dev, const char *name,
         const struct fpga_manager_ops *mops,
         void *priv)
{
 struct fpga_manager *mgr;
 int id, ret;

 if (!mops || !mops->write_complete || !mops->state ||
     !mops->write_init || (!mops->write && !mops->write_sg) ||
     (mops->write && mops->write_sg)) {
  dev_err(dev, "Attempt to register without fpga_manager_ops\n");
  return ((void*)0);
 }

 if (!name || !strlen(name)) {
  dev_err(dev, "Attempt to register with no name!\n");
  return ((void*)0);
 }

 mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
 if (!mgr)
  return ((void*)0);

 id = ida_simple_get(&fpga_mgr_ida, 0, 0, GFP_KERNEL);
 if (id < 0) {
  ret = id;
  goto error_kfree;
 }

 mutex_init(&mgr->ref_mutex);

 mgr->name = name;
 mgr->mops = mops;
 mgr->priv = priv;

 device_initialize(&mgr->dev);
 mgr->dev.class = fpga_mgr_class;
 mgr->dev.groups = mops->groups;
 mgr->dev.parent = dev;
 mgr->dev.of_node = dev->of_node;
 mgr->dev.id = id;

 ret = dev_set_name(&mgr->dev, "fpga%d", id);
 if (ret)
  goto error_device;

 return mgr;

error_device:
 ida_simple_remove(&fpga_mgr_ida, id);
error_kfree:
 kfree(mgr);

 return ((void*)0);
}
