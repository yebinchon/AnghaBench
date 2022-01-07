
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_4__ {int num_enc_rings; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {struct amdgpu_ring* ring_enc; struct amdgpu_ring ring; } ;


 int AMD_CG_STATE_UNGATE ;
 int DRM_ERROR (char*,int) ;
 int DRM_INFO (char*) ;
 int PACKET0 (int ,int ) ;
 int amdgpu_asic_set_uvd_clocks (struct amdgpu_device*,int,int) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmUVD_SEMA_CNTL ;
 int mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL ;
 int mmUVD_SEMA_TIMEOUT_STATUS ;
 int mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL ;
 int mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL ;
 int uvd_v6_0_enable_mgcg (struct amdgpu_device*,int) ;
 scalar_t__ uvd_v6_0_enc_support (struct amdgpu_device*) ;
 int uvd_v6_0_set_clockgating_state (struct amdgpu_device*,int ) ;

__attribute__((used)) static int uvd_v6_0_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct amdgpu_ring *ring = &adev->uvd.inst->ring;
 uint32_t tmp;
 int i, r;

 amdgpu_asic_set_uvd_clocks(adev, 10000, 10000);
 uvd_v6_0_set_clockgating_state(adev, AMD_CG_STATE_UNGATE);
 uvd_v6_0_enable_mgcg(adev, 1);

 r = amdgpu_ring_test_helper(ring);
 if (r)
  goto done;

 r = amdgpu_ring_alloc(ring, 10);
 if (r) {
  DRM_ERROR("amdgpu: ring failed to lock UVD ring (%d).\n", r);
  goto done;
 }

 tmp = PACKET0(mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, 0);
 amdgpu_ring_write(ring, tmp);
 amdgpu_ring_write(ring, 0xFFFFF);

 tmp = PACKET0(mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, 0);
 amdgpu_ring_write(ring, tmp);
 amdgpu_ring_write(ring, 0xFFFFF);

 tmp = PACKET0(mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, 0);
 amdgpu_ring_write(ring, tmp);
 amdgpu_ring_write(ring, 0xFFFFF);


 amdgpu_ring_write(ring, PACKET0(mmUVD_SEMA_TIMEOUT_STATUS, 0));
 amdgpu_ring_write(ring, 0x8);

 amdgpu_ring_write(ring, PACKET0(mmUVD_SEMA_CNTL, 0));
 amdgpu_ring_write(ring, 3);

 amdgpu_ring_commit(ring);

 if (uvd_v6_0_enc_support(adev)) {
  for (i = 0; i < adev->uvd.num_enc_rings; ++i) {
   ring = &adev->uvd.inst->ring_enc[i];
   r = amdgpu_ring_test_helper(ring);
   if (r)
    goto done;
  }
 }

done:
 if (!r) {
  if (uvd_v6_0_enc_support(adev))
   DRM_INFO("UVD and UVD ENC initialized successfully.\n");
  else
   DRM_INFO("UVD initialized successfully.\n");
 }

 return r;
}
