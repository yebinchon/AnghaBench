
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ready; } ;
struct TYPE_10__ {TYPE_3__ sched; } ;
struct TYPE_11__ {TYPE_4__ ring; } ;
struct TYPE_12__ {int num_compute_rings; TYPE_5__ kiq; TYPE_2__* compute_ring; } ;
struct amdgpu_device {TYPE_6__ gfx; } ;
struct TYPE_7__ {int ready; } ;
struct TYPE_8__ {TYPE_1__ sched; } ;


 int CP_MEC_CNTL__MEC_ME1_HALT_MASK ;
 int CP_MEC_CNTL__MEC_ME2_HALT_MASK ;
 int GC ;
 int WREG32_SOC15_RLC (int ,int ,int ,int) ;
 int mmCP_MEC_CNTL ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v9_0_cp_compute_enable(struct amdgpu_device *adev, bool enable)
{
 int i;

 if (enable) {
  WREG32_SOC15_RLC(GC, 0, mmCP_MEC_CNTL, 0);
 } else {
  WREG32_SOC15_RLC(GC, 0, mmCP_MEC_CNTL,
   (CP_MEC_CNTL__MEC_ME1_HALT_MASK | CP_MEC_CNTL__MEC_ME2_HALT_MASK));
  for (i = 0; i < adev->gfx.num_compute_rings; i++)
   adev->gfx.compute_ring[i].sched.ready = 0;
  adev->gfx.kiq.ring.sched.ready = 0;
 }
 udelay(50);
}
