
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capability; int cpu_core_id_base; int cpu_cores_count; } ;
struct kfd_topology_device {TYPE_1__ node_props; } ;
struct crat_subtype_computeunit {int hsa_capability; int processor_id_low; int num_cpu_cores; } ;


 int CRAT_CU_FLAGS_IOMMU_PRESENT ;
 int HSA_CAP_ATS_PRESENT ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void kfd_populated_cu_info_cpu(struct kfd_topology_device *dev,
  struct crat_subtype_computeunit *cu)
{
 dev->node_props.cpu_cores_count = cu->num_cpu_cores;
 dev->node_props.cpu_core_id_base = cu->processor_id_low;
 if (cu->hsa_capability & CRAT_CU_FLAGS_IOMMU_PRESENT)
  dev->node_props.capability |= HSA_CAP_ATS_PRESENT;

 pr_debug("CU CPU: cores=%d id_base=%d\n", cu->num_cpu_cores,
   cu->processor_id_low);
}
