
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ load_type; } ;
struct TYPE_4__ {int irq; int ring; } ;
struct TYPE_5__ {int num_gfx_rings; int num_compute_rings; TYPE_1__ kiq; int * compute_ring; int * gfx_ring; } ;
struct amdgpu_device {TYPE_3__ firmware; TYPE_2__ gfx; } ;


 scalar_t__ AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO ;
 int amdgpu_gfx_kiq_fini (struct amdgpu_device*) ;
 int amdgpu_gfx_kiq_free_ring (int *,int *) ;
 int amdgpu_gfx_mqd_sw_fini (struct amdgpu_device*) ;
 int amdgpu_ring_fini (int *) ;
 int gfx_v10_0_ce_fini (struct amdgpu_device*) ;
 int gfx_v10_0_free_microcode (struct amdgpu_device*) ;
 int gfx_v10_0_me_fini (struct amdgpu_device*) ;
 int gfx_v10_0_mec_fini (struct amdgpu_device*) ;
 int gfx_v10_0_pfp_fini (struct amdgpu_device*) ;
 int gfx_v10_0_rlc_backdoor_autoload_buffer_fini (struct amdgpu_device*) ;
 int gfx_v10_0_rlc_fini (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v10_0_sw_fini(void *handle)
{
 int i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->gfx.num_gfx_rings; i++)
  amdgpu_ring_fini(&adev->gfx.gfx_ring[i]);
 for (i = 0; i < adev->gfx.num_compute_rings; i++)
  amdgpu_ring_fini(&adev->gfx.compute_ring[i]);

 amdgpu_gfx_mqd_sw_fini(adev);
 amdgpu_gfx_kiq_free_ring(&adev->gfx.kiq.ring, &adev->gfx.kiq.irq);
 amdgpu_gfx_kiq_fini(adev);

 gfx_v10_0_pfp_fini(adev);
 gfx_v10_0_ce_fini(adev);
 gfx_v10_0_me_fini(adev);
 gfx_v10_0_rlc_fini(adev);
 gfx_v10_0_mec_fini(adev);

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO)
  gfx_v10_0_rlc_backdoor_autoload_buffer_fini(adev);

 gfx_v10_0_free_microcode(adev);

 return 0;
}
