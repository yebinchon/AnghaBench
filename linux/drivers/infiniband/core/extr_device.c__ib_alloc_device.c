
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int unregistration_work; int unreg_completion; int compat_devs_mutex; int compat_devs; int client_data_rwsem; int client_data; int unregistration_lock; int event_handler_lock; int event_handler_list; int coredev; int ** groups; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WARN_ON (int) ;
 int XA_FLAGS_ALLOC ;
 int ib_dev_attr_group ;
 int ib_unregister_work ;
 int init_completion (int *) ;
 int init_net ;
 int init_rwsem (int *) ;
 int kfree (struct ib_device*) ;
 struct ib_device* kzalloc (size_t,int ) ;
 int mutex_init (int *) ;
 int rdma_init_coredev (int *,struct ib_device*,int *) ;
 scalar_t__ rdma_restrack_init (struct ib_device*) ;
 int spin_lock_init (int *) ;
 int xa_init_flags (int *,int ) ;

struct ib_device *_ib_alloc_device(size_t size)
{
 struct ib_device *device;

 if (WARN_ON(size < sizeof(struct ib_device)))
  return ((void*)0);

 device = kzalloc(size, GFP_KERNEL);
 if (!device)
  return ((void*)0);

 if (rdma_restrack_init(device)) {
  kfree(device);
  return ((void*)0);
 }

 device->groups[0] = &ib_dev_attr_group;
 rdma_init_coredev(&device->coredev, device, &init_net);

 INIT_LIST_HEAD(&device->event_handler_list);
 spin_lock_init(&device->event_handler_lock);
 mutex_init(&device->unregistration_lock);




 xa_init_flags(&device->client_data, XA_FLAGS_ALLOC);
 init_rwsem(&device->client_data_rwsem);
 xa_init_flags(&device->compat_devs, XA_FLAGS_ALLOC);
 mutex_init(&device->compat_devs_mutex);
 init_completion(&device->unreg_completion);
 INIT_WORK(&device->unregistration_work, ib_unregister_work);

 return device;
}
