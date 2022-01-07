
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int num_gfx_rings; int num_compute_rings; TYPE_4__* compute_ring; TYPE_2__* gfx_ring; } ;
struct amdgpu_device {TYPE_5__ gfx; } ;
struct TYPE_8__ {int ready; } ;
struct TYPE_9__ {TYPE_3__ sched; } ;
struct TYPE_6__ {int ready; } ;
struct TYPE_7__ {TYPE_1__ sched; } ;


 int CP_ME_CNTL__CE_HALT_MASK ;
 int CP_ME_CNTL__ME_HALT_MASK ;
 int CP_ME_CNTL__PFP_HALT_MASK ;
 int WREG32 (int ,int) ;
 int mmCP_ME_CNTL ;
 int mmSCRATCH_UMSK ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v6_0_cp_gfx_enable(struct amdgpu_device *adev, bool enable)
{
 int i;
 if (enable) {
  WREG32(mmCP_ME_CNTL, 0);
 } else {
  WREG32(mmCP_ME_CNTL, (CP_ME_CNTL__ME_HALT_MASK |
          CP_ME_CNTL__PFP_HALT_MASK |
          CP_ME_CNTL__CE_HALT_MASK));
  WREG32(mmSCRATCH_UMSK, 0);
  for (i = 0; i < adev->gfx.num_gfx_rings; i++)
   adev->gfx.gfx_ring[i].sched.ready = 0;
  for (i = 0; i < adev->gfx.num_compute_rings; i++)
   adev->gfx.compute_ring[i].sched.ready = 0;
 }
 udelay(50);
}
