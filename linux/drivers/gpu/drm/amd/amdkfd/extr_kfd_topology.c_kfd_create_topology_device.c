
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kfd_topology_device {int list; int perf_props; int io_link_props; int cache_props; int mem_props; } ;


 int INIT_LIST_HEAD (int *) ;
 struct kfd_topology_device* kfd_alloc_struct (struct kfd_topology_device*) ;
 int list_add_tail (int *,struct list_head*) ;
 int pr_err (char*) ;

struct kfd_topology_device *kfd_create_topology_device(
    struct list_head *device_list)
{
 struct kfd_topology_device *dev;

 dev = kfd_alloc_struct(dev);
 if (!dev) {
  pr_err("No memory to allocate a topology device");
  return ((void*)0);
 }

 INIT_LIST_HEAD(&dev->mem_props);
 INIT_LIST_HEAD(&dev->cache_props);
 INIT_LIST_HEAD(&dev->io_link_props);
 INIT_LIST_HEAD(&dev->perf_props);

 list_add_tail(&dev->list, device_list);

 return dev;
}
