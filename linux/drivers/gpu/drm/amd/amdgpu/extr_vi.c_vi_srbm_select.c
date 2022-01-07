
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int MEID ;
 int PIPEID ;
 int QUEUEID ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int SRBM_GFX_CNTL ;
 int VMID ;
 int WREG32 (int ,int ) ;
 int mmSRBM_GFX_CNTL ;

void vi_srbm_select(struct amdgpu_device *adev,
       u32 me, u32 pipe, u32 queue, u32 vmid)
{
 u32 srbm_gfx_cntl = 0;
 srbm_gfx_cntl = REG_SET_FIELD(srbm_gfx_cntl, SRBM_GFX_CNTL, PIPEID, pipe);
 srbm_gfx_cntl = REG_SET_FIELD(srbm_gfx_cntl, SRBM_GFX_CNTL, MEID, me);
 srbm_gfx_cntl = REG_SET_FIELD(srbm_gfx_cntl, SRBM_GFX_CNTL, VMID, vmid);
 srbm_gfx_cntl = REG_SET_FIELD(srbm_gfx_cntl, SRBM_GFX_CNTL, QUEUEID, queue);
 WREG32(mmSRBM_GFX_CNTL, srbm_gfx_cntl);
}
