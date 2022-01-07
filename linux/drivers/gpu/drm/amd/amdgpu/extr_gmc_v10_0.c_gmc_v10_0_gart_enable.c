
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int ready; int * bo; } ;
struct TYPE_5__ {int gart_size; } ;
struct amdgpu_device {TYPE_3__ gart; TYPE_2__ gmc; TYPE_1__* nbio_funcs; int dev; } ;
struct TYPE_4__ {int (* hdp_flush ) (struct amdgpu_device*,int *) ;} ;


 int AMDGPU_GFXHUB_0 ;
 int AMDGPU_MMHUB_0 ;
 scalar_t__ AMDGPU_VM_FAULT_STOP_ALWAYS ;
 int DRM_INFO (char*,unsigned int,unsigned long long) ;
 int EINVAL ;
 int HDP ;
 int HDP_MISC_CNTL__FLUSH_INVALIDATE_CACHE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 scalar_t__ amdgpu_bo_gpu_offset (int *) ;
 int amdgpu_gart_table_vram_pin (struct amdgpu_device*) ;
 scalar_t__ amdgpu_vm_fault_stop ;
 int dev_err (int ,char*) ;
 int gfxhub_v2_0_gart_enable (struct amdgpu_device*) ;
 int gfxhub_v2_0_set_fault_enable_default (struct amdgpu_device*,int) ;
 int gmc_v10_0_flush_gpu_tlb (struct amdgpu_device*,int ,int ,int ) ;
 int mmHDP_HOST_PATH_CNTL ;
 int mmHDP_MISC_CNTL ;
 int mmhub_v2_0_gart_enable (struct amdgpu_device*) ;
 int mmhub_v2_0_set_fault_enable_default (struct amdgpu_device*,int) ;
 int stub1 (struct amdgpu_device*,int *) ;

__attribute__((used)) static int gmc_v10_0_gart_enable(struct amdgpu_device *adev)
{
 int r;
 bool value;
 u32 tmp;

 if (adev->gart.bo == ((void*)0)) {
  dev_err(adev->dev, "No VRAM object for PCIE GART.\n");
  return -EINVAL;
 }

 r = amdgpu_gart_table_vram_pin(adev);
 if (r)
  return r;

 r = gfxhub_v2_0_gart_enable(adev);
 if (r)
  return r;

 r = mmhub_v2_0_gart_enable(adev);
 if (r)
  return r;

 tmp = RREG32_SOC15(HDP, 0, mmHDP_MISC_CNTL);
 tmp |= HDP_MISC_CNTL__FLUSH_INVALIDATE_CACHE_MASK;
 WREG32_SOC15(HDP, 0, mmHDP_MISC_CNTL, tmp);

 tmp = RREG32_SOC15(HDP, 0, mmHDP_HOST_PATH_CNTL);
 WREG32_SOC15(HDP, 0, mmHDP_HOST_PATH_CNTL, tmp);


 adev->nbio_funcs->hdp_flush(adev, ((void*)0));

 value = (amdgpu_vm_fault_stop == AMDGPU_VM_FAULT_STOP_ALWAYS) ?
  0 : 1;

 gfxhub_v2_0_set_fault_enable_default(adev, value);
 mmhub_v2_0_set_fault_enable_default(adev, value);
 gmc_v10_0_flush_gpu_tlb(adev, 0, AMDGPU_MMHUB_0, 0);
 gmc_v10_0_flush_gpu_tlb(adev, 0, AMDGPU_GFXHUB_0, 0);

 DRM_INFO("PCIE GART of %uM enabled (table at 0x%016llX).\n",
   (unsigned)(adev->gmc.gart_size >> 20),
   (unsigned long long)amdgpu_bo_gpu_offset(adev->gart.bo));

 adev->gart.ready = 1;

 return 0;
}
