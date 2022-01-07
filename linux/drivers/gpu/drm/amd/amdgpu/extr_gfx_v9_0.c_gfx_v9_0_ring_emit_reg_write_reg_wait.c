
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {TYPE_1__* funcs; struct amdgpu_device* adev; } ;
struct TYPE_4__ {int me_fw_write_wait; int mec_fw_write_wait; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_GFX ;
 int amdgpu_ring_emit_reg_write_reg_wait_helper (struct amdgpu_ring*,int ,int ,int ,int ) ;
 int gfx_v9_0_wait_reg_mem (struct amdgpu_ring*,int,int ,int,int ,int ,int ,int ,int) ;

__attribute__((used)) static void gfx_v9_0_ring_emit_reg_write_reg_wait(struct amdgpu_ring *ring,
        uint32_t reg0, uint32_t reg1,
        uint32_t ref, uint32_t mask)
{
 int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);
 struct amdgpu_device *adev = ring->adev;
 bool fw_version_ok = (ring->funcs->type == AMDGPU_RING_TYPE_GFX) ?
  adev->gfx.me_fw_write_wait : adev->gfx.mec_fw_write_wait;

 if (fw_version_ok)
  gfx_v9_0_wait_reg_mem(ring, usepfp, 0, 1, reg0, reg1,
          ref, mask, 0x20);
 else
  amdgpu_ring_emit_reg_write_reg_wait_helper(ring, reg0, reg1,
          ref, mask);
}
