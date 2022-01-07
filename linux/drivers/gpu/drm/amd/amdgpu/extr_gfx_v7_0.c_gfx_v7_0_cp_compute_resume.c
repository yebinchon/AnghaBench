
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_3__ {int num_mec; int num_pipe_per_mec; } ;
struct TYPE_4__ {int num_compute_rings; struct amdgpu_ring* compute_ring; TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;
 int gfx_v7_0_compute_pipe_init (struct amdgpu_device*,int,int) ;
 int gfx_v7_0_compute_queue_init (struct amdgpu_device*,int) ;
 int gfx_v7_0_cp_compute_enable (struct amdgpu_device*,int) ;
 int gfx_v7_0_cp_compute_fini (struct amdgpu_device*) ;
 int mmCP_CPF_DEBUG ;

__attribute__((used)) static int gfx_v7_0_cp_compute_resume(struct amdgpu_device *adev)
{
 int r, i, j;
 u32 tmp;
 struct amdgpu_ring *ring;


 tmp = RREG32(mmCP_CPF_DEBUG);
 tmp |= (1 << 23);
 WREG32(mmCP_CPF_DEBUG, tmp);


 for (i = 0; i < adev->gfx.mec.num_mec; i++)
  for (j = 0; j < adev->gfx.mec.num_pipe_per_mec; j++)
   gfx_v7_0_compute_pipe_init(adev, i, j);


 for (i = 0; i < adev->gfx.num_compute_rings; i++) {
  r = gfx_v7_0_compute_queue_init(adev, i);
  if (r) {
   gfx_v7_0_cp_compute_fini(adev);
   return r;
  }
 }

 gfx_v7_0_cp_compute_enable(adev, 1);

 for (i = 0; i < adev->gfx.num_compute_rings; i++) {
  ring = &adev->gfx.compute_ring[i];
  amdgpu_ring_test_helper(ring);
 }

 return 0;
}
