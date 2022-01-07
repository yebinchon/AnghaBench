
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int num_gfx_rings; TYPE_2__* gfx_ring; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int ready; } ;
struct TYPE_5__ {TYPE_1__ sched; } ;


 int CE_HALT ;
 int CP_ME_CNTL ;
 int GC ;
 int ME_HALT ;
 int PFP_HALT ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15_RLC (int ,int ,int ,int ) ;
 int mmCP_ME_CNTL ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v9_0_cp_gfx_enable(struct amdgpu_device *adev, bool enable)
{
 int i;
 u32 tmp = RREG32_SOC15(GC, 0, mmCP_ME_CNTL);

 tmp = REG_SET_FIELD(tmp, CP_ME_CNTL, ME_HALT, enable ? 0 : 1);
 tmp = REG_SET_FIELD(tmp, CP_ME_CNTL, PFP_HALT, enable ? 0 : 1);
 tmp = REG_SET_FIELD(tmp, CP_ME_CNTL, CE_HALT, enable ? 0 : 1);
 if (!enable) {
  for (i = 0; i < adev->gfx.num_gfx_rings; i++)
   adev->gfx.gfx_ring[i].sched.ready = 0;
 }
 WREG32_SOC15_RLC(GC, 0, mmCP_ME_CNTL, tmp);
 udelay(50);
}
