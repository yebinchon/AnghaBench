
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int me; struct amdgpu_device* adev; } ;
struct amdgpu_device {unsigned int usec_timeout; } ;


 int ETIMEDOUT ;
 int PACKET0 (int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmUVD_CONTEXT_ID ;
 int udelay (int) ;

__attribute__((used)) static int uvd_v7_0_ring_test_ring(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 uint32_t tmp = 0;
 unsigned i;
 int r;

 WREG32_SOC15(UVD, ring->me, mmUVD_CONTEXT_ID, 0xCAFEDEAD);
 r = amdgpu_ring_alloc(ring, 3);
 if (r)
  return r;

 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, ring->me, mmUVD_CONTEXT_ID), 0));
 amdgpu_ring_write(ring, 0xDEADBEEF);
 amdgpu_ring_commit(ring);
 for (i = 0; i < adev->usec_timeout; i++) {
  tmp = RREG32_SOC15(UVD, ring->me, mmUVD_CONTEXT_ID);
  if (tmp == 0xDEADBEEF)
   break;
  udelay(1);
 }

 if (i >= adev->usec_timeout)
  r = -ETIMEDOUT;

 return r;
}
