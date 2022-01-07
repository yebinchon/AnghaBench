
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kfd_topology_device {struct kfd_dev* gpu; } ;
struct kfd_dev {int dummy; } ;


 struct kfd_topology_device* kfd_topology_device_by_id (int ) ;

struct kfd_dev *kfd_device_by_id(uint32_t gpu_id)
{
 struct kfd_topology_device *top_dev;

 top_dev = kfd_topology_device_by_id(gpu_id);
 if (!top_dev)
  return ((void*)0);

 return top_dev->gpu;
}
