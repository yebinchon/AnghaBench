
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capability; int max_slots_scratch_cu; int simd_per_cu; int cu_per_simd_array; int array_count; int wave_front_size; int max_waves_per_simd; int lds_size_in_kb; int simd_count; int simd_id_base; } ;
struct kfd_topology_device {TYPE_1__ node_props; } ;
struct crat_subtype_computeunit {int hsa_capability; int processor_id_low; int max_slots_scatch_cu; int num_simd_per_cu; int num_cu_per_array; int array_count; int wave_front_size; int max_waves_simd; int lds_size_in_kb; int num_simd_cores; } ;


 int CRAT_CU_FLAGS_HOT_PLUGGABLE ;
 int HSA_CAP_HOT_PLUGGABLE ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void kfd_populated_cu_info_gpu(struct kfd_topology_device *dev,
  struct crat_subtype_computeunit *cu)
{
 dev->node_props.simd_id_base = cu->processor_id_low;
 dev->node_props.simd_count = cu->num_simd_cores;
 dev->node_props.lds_size_in_kb = cu->lds_size_in_kb;
 dev->node_props.max_waves_per_simd = cu->max_waves_simd;
 dev->node_props.wave_front_size = cu->wave_front_size;
 dev->node_props.array_count = cu->array_count;
 dev->node_props.cu_per_simd_array = cu->num_cu_per_array;
 dev->node_props.simd_per_cu = cu->num_simd_per_cu;
 dev->node_props.max_slots_scratch_cu = cu->max_slots_scatch_cu;
 if (cu->hsa_capability & CRAT_CU_FLAGS_HOT_PLUGGABLE)
  dev->node_props.capability |= HSA_CAP_HOT_PLUGGABLE;
 pr_debug("CU GPU: id_base=%d\n", cu->processor_id_low);
}
