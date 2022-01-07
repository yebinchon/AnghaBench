
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int clear_state_obj; int clear_state_gpu_addr; } ;
struct TYPE_3__ {TYPE_2__ rlc; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int amdgpu_bo_gpu_offset (int ) ;
 int amdgpu_bo_pin (int ,int ) ;
 int amdgpu_bo_reserve (int ,int) ;
 int amdgpu_bo_unreserve (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gfx_v8_0_csb_vram_pin(struct amdgpu_device *adev)
{
 int r;

 r = amdgpu_bo_reserve(adev->gfx.rlc.clear_state_obj, 0);
 if (unlikely(r != 0))
  return r;

 r = amdgpu_bo_pin(adev->gfx.rlc.clear_state_obj,
   AMDGPU_GEM_DOMAIN_VRAM);
 if (!r)
  adev->gfx.rlc.clear_state_gpu_addr =
   amdgpu_bo_gpu_offset(adev->gfx.rlc.clear_state_obj);

 amdgpu_bo_unreserve(adev->gfx.rlc.clear_state_obj);

 return r;
}
