
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct ib_device {int dummy; } ;


 int devices ;
 int devices_rwsem ;
 int down_read (int *) ;
 int ib_device_try_get (struct ib_device*) ;
 int rdma_dev_access_netns (struct ib_device*,struct net const*) ;
 int up_read (int *) ;
 struct ib_device* xa_load (int *,int ) ;

struct ib_device *ib_device_get_by_index(const struct net *net, u32 index)
{
 struct ib_device *device;

 down_read(&devices_rwsem);
 device = xa_load(&devices, index);
 if (device) {
  if (!rdma_dev_access_netns(device, net)) {
   device = ((void*)0);
   goto out;
  }

  if (!ib_device_try_get(device))
   device = ((void*)0);
 }
out:
 up_read(&devices_rwsem);
 return device;
}
