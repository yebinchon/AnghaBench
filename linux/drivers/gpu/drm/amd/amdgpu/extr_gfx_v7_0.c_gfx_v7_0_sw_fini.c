
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cp_table_ptr; int cp_table_gpu_addr; int cp_table_obj; scalar_t__ cp_table_size; int cs_ptr; int clear_state_gpu_addr; int clear_state_obj; } ;
struct TYPE_4__ {int num_gfx_rings; int num_compute_rings; TYPE_1__ rlc; int * compute_ring; int * gfx_ring; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int amdgpu_bo_free_kernel (int *,int *,void**) ;
 int amdgpu_gfx_rlc_fini (struct amdgpu_device*) ;
 int amdgpu_ring_fini (int *) ;
 int gfx_v7_0_cp_compute_fini (struct amdgpu_device*) ;
 int gfx_v7_0_free_microcode (struct amdgpu_device*) ;
 int gfx_v7_0_mec_fini (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v7_0_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int i;

 for (i = 0; i < adev->gfx.num_gfx_rings; i++)
  amdgpu_ring_fini(&adev->gfx.gfx_ring[i]);
 for (i = 0; i < adev->gfx.num_compute_rings; i++)
  amdgpu_ring_fini(&adev->gfx.compute_ring[i]);

 gfx_v7_0_cp_compute_fini(adev);
 amdgpu_gfx_rlc_fini(adev);
 gfx_v7_0_mec_fini(adev);
 amdgpu_bo_free_kernel(&adev->gfx.rlc.clear_state_obj,
    &adev->gfx.rlc.clear_state_gpu_addr,
    (void **)&adev->gfx.rlc.cs_ptr);
 if (adev->gfx.rlc.cp_table_size) {
  amdgpu_bo_free_kernel(&adev->gfx.rlc.cp_table_obj,
    &adev->gfx.rlc.cp_table_gpu_addr,
    (void **)&adev->gfx.rlc.cp_table_ptr);
 }
 gfx_v7_0_free_microcode(adev);

 return 0;
}
