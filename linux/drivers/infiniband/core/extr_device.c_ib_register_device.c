
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int kobj; } ;
struct TYPE_6__ {void (* dealloc_driver ) (struct ib_device*) ;} ;
struct ib_device {TYPE_2__ dev; TYPE_1__ ops; } ;


 int KOBJ_ADD ;
 int __ib_unregister_device (struct ib_device*) ;
 int assign_name (struct ib_device*,char const*) ;
 int dev_set_uevent_suppress (TYPE_2__*,int) ;
 int dev_warn (TYPE_2__*,char*) ;
 int device_add (TYPE_2__*) ;
 int device_del (TYPE_2__*) ;
 int enable_device_and_get (struct ib_device*) ;
 int ib_cache_cleanup_one (struct ib_device*) ;
 int ib_cache_setup_one (struct ib_device*) ;
 int ib_device_put (struct ib_device*) ;
 int ib_device_register_rdmacg (struct ib_device*) ;
 int ib_device_register_sysfs (struct ib_device*) ;
 int ib_device_unregister_rdmacg (struct ib_device*) ;
 int kobject_uevent (int *,int ) ;
 int rdma_counter_init (struct ib_device*) ;
 int setup_device (struct ib_device*) ;

int ib_register_device(struct ib_device *device, const char *name)
{
 int ret;

 ret = assign_name(device, name);
 if (ret)
  return ret;

 ret = setup_device(device);
 if (ret)
  return ret;

 ret = ib_cache_setup_one(device);
 if (ret) {
  dev_warn(&device->dev,
    "Couldn't set up InfiniBand P_Key/GID cache\n");
  return ret;
 }

 ib_device_register_rdmacg(device);

 rdma_counter_init(device);





 dev_set_uevent_suppress(&device->dev, 1);
 ret = device_add(&device->dev);
 if (ret)
  goto cg_cleanup;

 ret = ib_device_register_sysfs(device);
 if (ret) {
  dev_warn(&device->dev,
    "Couldn't register device with driver model\n");
  goto dev_cleanup;
 }

 ret = enable_device_and_get(device);
 dev_set_uevent_suppress(&device->dev, 0);

 kobject_uevent(&device->dev.kobj, KOBJ_ADD);
 if (ret) {
  void (*dealloc_fn)(struct ib_device *);
  dealloc_fn = device->ops.dealloc_driver;
  device->ops.dealloc_driver = ((void*)0);
  ib_device_put(device);
  __ib_unregister_device(device);
  device->ops.dealloc_driver = dealloc_fn;
  return ret;
 }
 ib_device_put(device);

 return 0;

dev_cleanup:
 device_del(&device->dev);
cg_cleanup:
 dev_set_uevent_suppress(&device->dev, 0);
 ib_device_unregister_rdmacg(device);
 ib_cache_cleanup_one(device);
 return ret;
}
