
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int ready; int * bo; } ;
struct TYPE_5__ {int vram_start; int gart_size; } ;
struct amdgpu_device {int asic_type; int num_vmhubs; TYPE_3__ gart; TYPE_2__ gmc; TYPE_1__* nbio_funcs; int dev; } ;
struct TYPE_4__ {int (* hdp_flush ) (struct amdgpu_device*,int *) ;} ;


 scalar_t__ AMDGPU_VM_FAULT_STOP_ALWAYS ;
 int ARRAY_SIZE (int ) ;
 int CHIP_ARCTURUS ;

 int DRM_INFO (char*,unsigned int,unsigned long long) ;
 int EINVAL ;
 int FLUSH_INVALIDATE_CACHE ;
 int HDP ;
 int HDP_MISC_CNTL ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 scalar_t__ amdgpu_bo_gpu_offset (int *) ;
 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int amdgpu_gart_table_vram_pin (struct amdgpu_device*) ;
 scalar_t__ amdgpu_vm_fault_stop ;
 int dev_err (int ,char*) ;
 int gfxhub_v1_0_gart_enable (struct amdgpu_device*) ;
 int gfxhub_v1_0_set_fault_enable_default (struct amdgpu_device*,int) ;
 int gmc_v9_0_flush_gpu_tlb (struct amdgpu_device*,int ,int,int ) ;
 int golden_settings_vega10_hdp ;
 int mmHDP_HOST_PATH_CNTL ;
 int mmHDP_NONSURFACE_BASE ;
 int mmHDP_NONSURFACE_BASE_HI ;
 int mmhub_v1_0_gart_enable (struct amdgpu_device*) ;
 int mmhub_v1_0_set_fault_enable_default (struct amdgpu_device*,int) ;
 int mmhub_v1_0_update_power_gating (struct amdgpu_device*,int) ;
 int mmhub_v9_4_gart_enable (struct amdgpu_device*) ;
 int mmhub_v9_4_set_fault_enable_default (struct amdgpu_device*,int) ;
 int stub1 (struct amdgpu_device*,int *) ;

__attribute__((used)) static int gmc_v9_0_gart_enable(struct amdgpu_device *adev)
{
 int r, i;
 bool value;
 u32 tmp;

 amdgpu_device_program_register_sequence(adev,
      golden_settings_vega10_hdp,
      ARRAY_SIZE(golden_settings_vega10_hdp));

 if (adev->gart.bo == ((void*)0)) {
  dev_err(adev->dev, "No VRAM object for PCIE GART.\n");
  return -EINVAL;
 }
 r = amdgpu_gart_table_vram_pin(adev);
 if (r)
  return r;

 switch (adev->asic_type) {
 case 128:

  mmhub_v1_0_update_power_gating(adev, 1);
  break;
 default:
  break;
 }

 r = gfxhub_v1_0_gart_enable(adev);
 if (r)
  return r;

 if (adev->asic_type == CHIP_ARCTURUS)
  r = mmhub_v9_4_gart_enable(adev);
 else
  r = mmhub_v1_0_gart_enable(adev);
 if (r)
  return r;

 WREG32_FIELD15(HDP, 0, HDP_MISC_CNTL, FLUSH_INVALIDATE_CACHE, 1);

 tmp = RREG32_SOC15(HDP, 0, mmHDP_HOST_PATH_CNTL);
 WREG32_SOC15(HDP, 0, mmHDP_HOST_PATH_CNTL, tmp);

 WREG32_SOC15(HDP, 0, mmHDP_NONSURFACE_BASE, (adev->gmc.vram_start >> 8));
 WREG32_SOC15(HDP, 0, mmHDP_NONSURFACE_BASE_HI, (adev->gmc.vram_start >> 40));


 adev->nbio_funcs->hdp_flush(adev, ((void*)0));

 if (amdgpu_vm_fault_stop == AMDGPU_VM_FAULT_STOP_ALWAYS)
  value = 0;
 else
  value = 1;

 gfxhub_v1_0_set_fault_enable_default(adev, value);
 if (adev->asic_type == CHIP_ARCTURUS)
  mmhub_v9_4_set_fault_enable_default(adev, value);
 else
  mmhub_v1_0_set_fault_enable_default(adev, value);

 for (i = 0; i < adev->num_vmhubs; ++i)
  gmc_v9_0_flush_gpu_tlb(adev, 0, i, 0);

 DRM_INFO("PCIE GART of %uM enabled (table at 0x%016llX).\n",
   (unsigned)(adev->gmc.gart_size >> 20),
   (unsigned long long)amdgpu_bo_gpu_offset(adev->gart.bo));
 adev->gart.ready = 1;
 return 0;
}
