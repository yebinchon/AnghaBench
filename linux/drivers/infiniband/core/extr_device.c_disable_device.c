
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ib_device {int unreg_completion; int index; int refcount; } ;


 int DEVICE_REGISTERED ;
 int WARN_ON (int) ;
 int clients_rwsem ;
 int devices ;
 int devices_rwsem ;
 int down_read (int *) ;
 int down_write (int *) ;
 scalar_t__ highest_client_id ;
 int ib_device_put (struct ib_device*) ;
 int refcount_read (int *) ;
 int remove_client_context (struct ib_device*,scalar_t__) ;
 int remove_compat_devs (struct ib_device*) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int wait_for_completion (int *) ;
 int xa_clear_mark (int *,int ,int ) ;

__attribute__((used)) static void disable_device(struct ib_device *device)
{
 u32 cid;

 WARN_ON(!refcount_read(&device->refcount));

 down_write(&devices_rwsem);
 xa_clear_mark(&devices, device->index, DEVICE_REGISTERED);
 up_write(&devices_rwsem);







 down_read(&clients_rwsem);
 cid = highest_client_id;
 up_read(&clients_rwsem);
 while (cid) {
  cid--;
  remove_client_context(device, cid);
 }


 ib_device_put(device);
 wait_for_completion(&device->unreg_completion);






 remove_compat_devs(device);
}
