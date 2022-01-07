
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_vcn_inst; int harvest_config; int num_enc_rings; int fw; TYPE_1__* inst; int dpg_sram_cpu_addr; int dpg_sram_gpu_addr; int dpg_sram_bo; scalar_t__ indirect_sram; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;
struct TYPE_3__ {int ring_jpeg; int * ring_enc; int ring_dec; int cpu_addr; int gpu_addr; int vcpu_bo; int saved_bo; } ;


 int amdgpu_bo_free_kernel (int *,int *,void**) ;
 int amdgpu_ring_fini (int *) ;
 int kvfree (int ) ;
 int release_firmware (int ) ;

int amdgpu_vcn_sw_fini(struct amdgpu_device *adev)
{
 int i, j;

 if (adev->vcn.indirect_sram) {
  amdgpu_bo_free_kernel(&adev->vcn.dpg_sram_bo,
          &adev->vcn.dpg_sram_gpu_addr,
          (void **)&adev->vcn.dpg_sram_cpu_addr);
 }

 for (j = 0; j < adev->vcn.num_vcn_inst; ++j) {
  if (adev->vcn.harvest_config & (1 << j))
   continue;
  kvfree(adev->vcn.inst[j].saved_bo);

  amdgpu_bo_free_kernel(&adev->vcn.inst[j].vcpu_bo,
       &adev->vcn.inst[j].gpu_addr,
       (void **)&adev->vcn.inst[j].cpu_addr);

  amdgpu_ring_fini(&adev->vcn.inst[j].ring_dec);

  for (i = 0; i < adev->vcn.num_enc_rings; ++i)
   amdgpu_ring_fini(&adev->vcn.inst[j].ring_enc[i]);

  amdgpu_ring_fini(&adev->vcn.inst[j].ring_jpeg);
 }

 release_firmware(adev->vcn.fw);

 return 0;
}
