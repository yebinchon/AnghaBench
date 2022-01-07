
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capability; } ;
struct kfd_topology_device {int perf_props; TYPE_1__ node_props; } ;
struct kfd_perf_properties {int max_concurrent; int list; int block_name; } ;


 int ENOMEM ;
 int HSA_CAP_ATS_PRESENT ;
 int amd_iommu_pc_get_max_banks (int ) ;
 int amd_iommu_pc_get_max_counters (int ) ;
 int amd_iommu_pc_supported () ;
 struct kfd_perf_properties* kfd_alloc_struct (struct kfd_perf_properties*) ;
 int list_add_tail (int *,int *) ;
 int strcpy (int ,char*) ;

int kfd_iommu_add_perf_counters(struct kfd_topology_device *kdev)
{
 struct kfd_perf_properties *props;

 if (!(kdev->node_props.capability & HSA_CAP_ATS_PRESENT))
  return 0;

 if (!amd_iommu_pc_supported())
  return 0;

 props = kfd_alloc_struct(props);
 if (!props)
  return -ENOMEM;
 strcpy(props->block_name, "iommu");
 props->max_concurrent = amd_iommu_pc_get_max_banks(0) *
  amd_iommu_pc_get_max_counters(0);
 list_add_tail(&props->list, &kdev->perf_props);

 return 0;
}
