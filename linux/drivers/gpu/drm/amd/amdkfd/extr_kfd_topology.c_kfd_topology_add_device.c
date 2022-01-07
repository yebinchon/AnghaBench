
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint32_t ;
struct list_head {int dummy; } ;
struct TYPE_14__ {int max_engine_clk_ccompute; int capability; int simd_count; int max_waves_per_simd; int num_gws; int num_sdma_xgmi_engines; int num_sdma_engines; int hive_id; int drm_render_minor; int max_engine_clk_fcompute; int location_id; int device_id; int vendor_id; int simd_arrays_per_engine; int name; } ;
struct kfd_topology_device {TYPE_6__ node_props; TYPE_5__* gpu; void* gpu_id; } ;
struct TYPE_9__ {int drm_render_minor; } ;
struct kfd_dev {TYPE_2__* device_info; int hive_id; TYPE_1__ shared_resources; TYPE_8__* pdev; void* id; } ;
struct kfd_cu_info {int simd_per_cu; int cu_active_number; int num_shader_arrays_per_engine; } ;
struct amdgpu_ras {int features; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_16__ {int device; int vendor; } ;
struct TYPE_15__ {int generation_count; } ;
struct TYPE_13__ {scalar_t__ kgd; TYPE_4__* device_info; TYPE_3__* dqm; } ;
struct TYPE_12__ {int asic_family; scalar_t__ needs_iommu_device; } ;
struct TYPE_11__ {scalar_t__ sched_policy; } ;
struct TYPE_10__ {int num_xgmi_sdma_engines; int num_sdma_engines; int asic_name; } ;


 int AMDGPU_RAS_BLOCK__GFX ;
 int AMDGPU_RAS_BLOCK__SDMA ;
 int AMDGPU_RAS_BLOCK__UMC ;
 int BIT (int ) ;
 int COMPUTE_UNIT_GPU ;
 int ENODEV ;
 int HSA_CAP_ATS_PRESENT ;
 int HSA_CAP_DOORBELL_TYPE_1_0 ;
 int HSA_CAP_DOORBELL_TYPE_2_0 ;
 int HSA_CAP_DOORBELL_TYPE_PRE_1_0 ;
 int HSA_CAP_DOORBELL_TYPE_TOTALBITS_MASK ;
 int HSA_CAP_DOORBELL_TYPE_TOTALBITS_SHIFT ;
 int HSA_CAP_MEM_EDCSUPPORTED ;
 int HSA_CAP_RASEVENTNOTIFY ;
 int HSA_CAP_SRAM_EDCSUPPORTED ;
 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ KFD_SCHED_POLICY_NO_HWS ;
 int KFD_TOPOLOGY_PUBLIC_NAME_SIZE ;
 int WARN (int,char*,int) ;
 scalar_t__ WARN_ON (int) ;
 int amdgpu_amdkfd_get_cu_info (scalar_t__,struct kfd_cu_info*) ;
 int amdgpu_amdkfd_get_max_engine_clock_in_mhz (scalar_t__) ;
 int amdgpu_amdkfd_get_num_gws (scalar_t__) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int atomic_inc_return (int *) ;
 int cpufreq_quick_get_max (int ) ;
 int down_write (int *) ;
 scalar_t__ hws_gws_support ;
 struct kfd_topology_device* kfd_assign_gpu (struct kfd_dev*) ;
 int kfd_create_crat_image_virtual (void**,size_t*,int ,struct kfd_dev*,int) ;
 int kfd_debug_print_topology () ;
 int kfd_destroy_crat_image (void*) ;
 int kfd_fill_iolink_non_crat_info (struct kfd_topology_device*) ;
 int kfd_fill_mem_clk_max_info (struct kfd_topology_device*) ;
 void* kfd_generate_gpu_id (struct kfd_dev*) ;
 int kfd_notify_gpu_change (void*,int) ;
 int kfd_parse_crat_table (void*,struct list_head*,int) ;
 int kfd_topology_update_device_list (struct list_head*,int *) ;
 int kfd_topology_update_sysfs () ;
 int pci_dev_id (TYPE_8__*) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,void*,...) ;
 int strncpy (int ,int ,int ) ;
 TYPE_7__ sys_props ;
 int topology_crat_proximity_domain ;
 int topology_device_list ;
 int topology_lock ;
 int up_write (int *) ;

int kfd_topology_add_device(struct kfd_dev *gpu)
{
 uint32_t gpu_id;
 struct kfd_topology_device *dev;
 struct kfd_cu_info cu_info;
 int res = 0;
 struct list_head temp_topology_device_list;
 void *crat_image = ((void*)0);
 size_t image_size = 0;
 int proximity_domain;
 struct amdgpu_ras *ctx;

 INIT_LIST_HEAD(&temp_topology_device_list);

 gpu_id = kfd_generate_gpu_id(gpu);

 pr_debug("Adding new GPU (ID: 0x%x) to topology\n", gpu_id);

 proximity_domain = atomic_inc_return(&topology_crat_proximity_domain);







 dev = kfd_assign_gpu(gpu);
 if (!dev) {
  res = kfd_create_crat_image_virtual(&crat_image, &image_size,
          COMPUTE_UNIT_GPU, gpu,
          proximity_domain);
  if (res) {
   pr_err("Error creating VCRAT for GPU (ID: 0x%x)\n",
          gpu_id);
   return res;
  }
  res = kfd_parse_crat_table(crat_image,
        &temp_topology_device_list,
        proximity_domain);
  if (res) {
   pr_err("Error parsing VCRAT for GPU (ID: 0x%x)\n",
          gpu_id);
   goto err;
  }

  down_write(&topology_lock);
  kfd_topology_update_device_list(&temp_topology_device_list,
   &topology_device_list);




  res = kfd_topology_update_sysfs();
  up_write(&topology_lock);

  if (!res)
   sys_props.generation_count++;
  else
   pr_err("Failed to update GPU (ID: 0x%x) to sysfs topology. res=%d\n",
      gpu_id, res);
  dev = kfd_assign_gpu(gpu);
  if (WARN_ON(!dev)) {
   res = -ENODEV;
   goto err;
  }
 }

 dev->gpu_id = gpu_id;
 gpu->id = gpu_id;
 amdgpu_amdkfd_get_cu_info(dev->gpu->kgd, &cu_info);

 strncpy(dev->node_props.name, gpu->device_info->asic_name,
   KFD_TOPOLOGY_PUBLIC_NAME_SIZE);

 dev->node_props.simd_arrays_per_engine =
  cu_info.num_shader_arrays_per_engine;

 dev->node_props.vendor_id = gpu->pdev->vendor;
 dev->node_props.device_id = gpu->pdev->device;
 dev->node_props.location_id = pci_dev_id(gpu->pdev);
 dev->node_props.max_engine_clk_fcompute =
  amdgpu_amdkfd_get_max_engine_clock_in_mhz(dev->gpu->kgd);
 dev->node_props.max_engine_clk_ccompute =
  cpufreq_quick_get_max(0) / 1000;
 dev->node_props.drm_render_minor =
  gpu->shared_resources.drm_render_minor;

 dev->node_props.hive_id = gpu->hive_id;
 dev->node_props.num_sdma_engines = gpu->device_info->num_sdma_engines;
 dev->node_props.num_sdma_xgmi_engines =
    gpu->device_info->num_xgmi_sdma_engines;
 dev->node_props.num_gws = (hws_gws_support &&
  dev->gpu->dqm->sched_policy != KFD_SCHED_POLICY_NO_HWS) ?
  amdgpu_amdkfd_get_num_gws(dev->gpu->kgd) : 0;

 kfd_fill_mem_clk_max_info(dev);
 kfd_fill_iolink_non_crat_info(dev);

 switch (dev->gpu->device_info->asic_family) {
 case 138:
 case 139:
 case 132:
  dev->node_props.capability |= ((HSA_CAP_DOORBELL_TYPE_PRE_1_0 <<
   HSA_CAP_DOORBELL_TYPE_TOTALBITS_SHIFT) &
   HSA_CAP_DOORBELL_TYPE_TOTALBITS_MASK);
  break;
 case 141:
 case 140:
 case 136:
 case 135:
 case 134:
 case 128:
  pr_debug("Adding doorbell packet type capability\n");
  dev->node_props.capability |= ((HSA_CAP_DOORBELL_TYPE_1_0 <<
   HSA_CAP_DOORBELL_TYPE_TOTALBITS_SHIFT) &
   HSA_CAP_DOORBELL_TYPE_TOTALBITS_MASK);
  break;
 case 131:
 case 130:
 case 129:
 case 133:
 case 142:
 case 137:
  dev->node_props.capability |= ((HSA_CAP_DOORBELL_TYPE_2_0 <<
   HSA_CAP_DOORBELL_TYPE_TOTALBITS_SHIFT) &
   HSA_CAP_DOORBELL_TYPE_TOTALBITS_MASK);
  break;
 default:
  WARN(1, "Unexpected ASIC family %u",
       dev->gpu->device_info->asic_family);
 }





 if (dev->gpu->device_info->needs_iommu_device)
  dev->node_props.capability |= HSA_CAP_ATS_PRESENT;
 else
  dev->node_props.capability &= ~HSA_CAP_ATS_PRESENT;






 if (dev->gpu->device_info->asic_family == 141) {
  dev->node_props.simd_count =
   cu_info.simd_per_cu * cu_info.cu_active_number;
  dev->node_props.max_waves_per_simd = 10;
 }

 ctx = amdgpu_ras_get_context((struct amdgpu_device *)(dev->gpu->kgd));
 if (ctx) {

  dev->node_props.capability |=
   (((ctx->features & BIT(AMDGPU_RAS_BLOCK__SDMA)) != 0) ||
    ((ctx->features & BIT(AMDGPU_RAS_BLOCK__GFX)) != 0)) ?
   HSA_CAP_SRAM_EDCSUPPORTED : 0;
  dev->node_props.capability |= ((ctx->features & BIT(AMDGPU_RAS_BLOCK__UMC)) != 0) ?
   HSA_CAP_MEM_EDCSUPPORTED : 0;

  dev->node_props.capability |= (ctx->features != 0) ?
   HSA_CAP_RASEVENTNOTIFY : 0;
 }

 kfd_debug_print_topology();

 if (!res)
  kfd_notify_gpu_change(gpu_id, 1);
err:
 kfd_destroy_crat_image(crat_image);
 return res;
}
