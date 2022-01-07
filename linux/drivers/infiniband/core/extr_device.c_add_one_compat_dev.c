
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rdma_dev_net {int id; int net; } ;
struct TYPE_9__ {int parent; } ;
struct TYPE_7__ {int rdma_net; } ;
struct ib_device {int compat_devs_mutex; int compat_devs; TYPE_6__ dev; TYPE_1__ coredev; } ;
struct TYPE_8__ {int release; int parent; } ;
struct ib_core_device {TYPE_2__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int compatdev_release ;
 int dev_name (TYPE_6__*) ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_add (TYPE_2__*) ;
 int device_del (TYPE_2__*) ;
 int ib_devices_shared_netns ;
 int ib_free_port_attrs (struct ib_core_device*) ;
 int ib_setup_port_attrs (struct ib_core_device*) ;
 struct ib_core_device* kzalloc (int,int ) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ net_eq (int ,int ) ;
 int put_device (TYPE_2__*) ;
 int rdma_init_coredev (struct ib_core_device*,struct ib_device*,int ) ;
 int rdma_nets_rwsem ;
 int read_pnet (int *) ;
 int xa_err (int ) ;
 struct ib_core_device* xa_load (int *,int ) ;
 int xa_release (int *,int ) ;
 int xa_reserve (int *,int ,int ) ;
 int xa_store (int *,int ,struct ib_core_device*,int ) ;

__attribute__((used)) static int add_one_compat_dev(struct ib_device *device,
         struct rdma_dev_net *rnet)
{
 struct ib_core_device *cdev;
 int ret;

 lockdep_assert_held(&rdma_nets_rwsem);
 if (!ib_devices_shared_netns)
  return 0;





 if (net_eq(read_pnet(&rnet->net),
     read_pnet(&device->coredev.rdma_net)))
  return 0;






 mutex_lock(&device->compat_devs_mutex);
 cdev = xa_load(&device->compat_devs, rnet->id);
 if (cdev) {
  ret = 0;
  goto done;
 }
 ret = xa_reserve(&device->compat_devs, rnet->id, GFP_KERNEL);
 if (ret)
  goto done;

 cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
 if (!cdev) {
  ret = -ENOMEM;
  goto cdev_err;
 }

 cdev->dev.parent = device->dev.parent;
 rdma_init_coredev(cdev, device, read_pnet(&rnet->net));
 cdev->dev.release = compatdev_release;
 dev_set_name(&cdev->dev, "%s", dev_name(&device->dev));

 ret = device_add(&cdev->dev);
 if (ret)
  goto add_err;
 ret = ib_setup_port_attrs(cdev);
 if (ret)
  goto port_err;

 ret = xa_err(xa_store(&device->compat_devs, rnet->id,
         cdev, GFP_KERNEL));
 if (ret)
  goto insert_err;

 mutex_unlock(&device->compat_devs_mutex);
 return 0;

insert_err:
 ib_free_port_attrs(cdev);
port_err:
 device_del(&cdev->dev);
add_err:
 put_device(&cdev->dev);
cdev_err:
 xa_release(&device->compat_devs, rnet->id);
done:
 mutex_unlock(&device->compat_devs_mutex);
 return ret;
}
