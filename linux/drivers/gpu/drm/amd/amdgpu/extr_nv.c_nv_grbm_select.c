
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int GRBM_GFX_CNTL ;
 int MEID ;
 int PIPEID ;
 int QUEUEID ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int VMID ;
 int WREG32 (int ,int ) ;
 int mmGRBM_GFX_CNTL ;

void nv_grbm_select(struct amdgpu_device *adev,
       u32 me, u32 pipe, u32 queue, u32 vmid)
{
 u32 grbm_gfx_cntl = 0;
 grbm_gfx_cntl = REG_SET_FIELD(grbm_gfx_cntl, GRBM_GFX_CNTL, PIPEID, pipe);
 grbm_gfx_cntl = REG_SET_FIELD(grbm_gfx_cntl, GRBM_GFX_CNTL, MEID, me);
 grbm_gfx_cntl = REG_SET_FIELD(grbm_gfx_cntl, GRBM_GFX_CNTL, VMID, vmid);
 grbm_gfx_cntl = REG_SET_FIELD(grbm_gfx_cntl, GRBM_GFX_CNTL, QUEUEID, queue);

 WREG32(SOC15_REG_OFFSET(GC, 0, mmGRBM_GFX_CNTL), grbm_gfx_cntl);
}
