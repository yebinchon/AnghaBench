
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_topology_device {int dummy; } ;


 int kfd_iommu_add_perf_counters (struct kfd_topology_device*) ;

__attribute__((used)) static int kfd_add_perf_to_topology(struct kfd_topology_device *kdev)
{

 return kfd_iommu_add_perf_counters(kdev);
}
