
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_device {int dev; int comp; int refcount; int devnum; int cdev; } ;
struct TYPE_2__ {scalar_t__ disassociate_ucontext; } ;
struct ib_device {TYPE_1__ ops; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int cdev_device_del (int *,int *) ;
 int ib_uverbs_comp_dev (struct ib_uverbs_device*) ;
 int ib_uverbs_free_hw_resources (struct ib_uverbs_device*,struct ib_device*) ;
 int ida_free (int *,int ) ;
 int put_device (int *) ;
 int uverbs_ida ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ib_uverbs_remove_one(struct ib_device *device, void *client_data)
{
 struct ib_uverbs_device *uverbs_dev = client_data;
 int wait_clients = 1;

 if (!uverbs_dev)
  return;

 cdev_device_del(&uverbs_dev->cdev, &uverbs_dev->dev);
 ida_free(&uverbs_ida, uverbs_dev->devnum);

 if (device->ops.disassociate_ucontext) {
  ib_uverbs_free_hw_resources(uverbs_dev, device);
  wait_clients = 0;
 }

 if (atomic_dec_and_test(&uverbs_dev->refcount))
  ib_uverbs_comp_dev(uverbs_dev);
 if (wait_clients)
  wait_for_completion(&uverbs_dev->comp);

 put_device(&uverbs_dev->dev);
}
