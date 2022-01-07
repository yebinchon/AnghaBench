
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_gfx_rings; TYPE_2__* gfx_ring; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int ready; } ;
struct TYPE_5__ {TYPE_1__ sched; } ;


 int CP_ME_CNTL__CE_HALT_MASK ;
 int CP_ME_CNTL__ME_HALT_MASK ;
 int CP_ME_CNTL__PFP_HALT_MASK ;
 int WREG32 (int ,int) ;
 int mmCP_ME_CNTL ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v7_0_cp_gfx_enable(struct amdgpu_device *adev, bool enable)
{
 int i;

 if (enable) {
  WREG32(mmCP_ME_CNTL, 0);
 } else {
  WREG32(mmCP_ME_CNTL, (CP_ME_CNTL__ME_HALT_MASK | CP_ME_CNTL__PFP_HALT_MASK | CP_ME_CNTL__CE_HALT_MASK));
  for (i = 0; i < adev->gfx.num_gfx_rings; i++)
   adev->gfx.gfx_ring[i].sched.ready = 0;
 }
 udelay(50);
}
