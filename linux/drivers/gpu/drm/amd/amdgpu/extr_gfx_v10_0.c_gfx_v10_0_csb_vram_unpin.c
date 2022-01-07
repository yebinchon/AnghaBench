
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clear_state_obj; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int amdgpu_bo_reserve (int ,int) ;
 int amdgpu_bo_unpin (int ) ;
 int amdgpu_bo_unreserve (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void gfx_v10_0_csb_vram_unpin(struct amdgpu_device *adev)
{
 int r;

 if (!adev->gfx.rlc.clear_state_obj)
  return;

 r = amdgpu_bo_reserve(adev->gfx.rlc.clear_state_obj, 1);
 if (likely(r == 0)) {
  amdgpu_bo_unpin(adev->gfx.rlc.clear_state_obj);
  amdgpu_bo_unreserve(adev->gfx.rlc.clear_state_obj);
 }
}
