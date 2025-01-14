
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_ring {int mqd_ptr; int mqd_gpu_addr; int mqd_obj; } ;
struct TYPE_7__ {int * mqd_backup; } ;
struct TYPE_6__ {int * mqd_backup; } ;
struct TYPE_5__ {struct amdgpu_ring ring; } ;
struct TYPE_8__ {int num_gfx_rings; int num_compute_rings; TYPE_3__ mec; TYPE_2__ me; TYPE_1__ kiq; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_4__ gfx; } ;


 size_t AMDGPU_MAX_COMPUTE_RINGS ;
 size_t AMDGPU_MAX_GFX_RINGS ;
 scalar_t__ CHIP_NAVI10 ;
 scalar_t__ amdgpu_async_gfx_ring ;
 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int kfree (int ) ;

void amdgpu_gfx_mqd_sw_fini(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring = ((void*)0);
 int i;

 if (adev->asic_type >= CHIP_NAVI10 && amdgpu_async_gfx_ring) {
  for (i = 0; i < adev->gfx.num_gfx_rings; i++) {
   ring = &adev->gfx.gfx_ring[i];
   kfree(adev->gfx.me.mqd_backup[i]);
   amdgpu_bo_free_kernel(&ring->mqd_obj,
           &ring->mqd_gpu_addr,
           &ring->mqd_ptr);
  }
 }

 for (i = 0; i < adev->gfx.num_compute_rings; i++) {
  ring = &adev->gfx.compute_ring[i];
  kfree(adev->gfx.mec.mqd_backup[i]);
  amdgpu_bo_free_kernel(&ring->mqd_obj,
          &ring->mqd_gpu_addr,
          &ring->mqd_ptr);
 }

 ring = &adev->gfx.kiq.ring;
 if (adev->asic_type >= CHIP_NAVI10 && amdgpu_async_gfx_ring)
  kfree(adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS]);
 kfree(adev->gfx.mec.mqd_backup[AMDGPU_MAX_COMPUTE_RINGS]);
 amdgpu_bo_free_kernel(&ring->mqd_obj,
         &ring->mqd_gpu_addr,
         &ring->mqd_ptr);
}
