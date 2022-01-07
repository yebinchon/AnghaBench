
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_3__ {int ring_lock; struct amdgpu_ring ring; } ;
struct TYPE_4__ {TYPE_1__ kiq; } ;
struct amdgpu_device {int usec_timeout; TYPE_2__ gfx; } ;


 int DRM_ERROR (char*,long) ;
 int ETIME ;
 int PACKET3 (int ,int ) ;
 int PACKET3_INVALIDATE_TLBS ;
 int PACKET3_INVALIDATE_TLBS_DST_SEL (int) ;
 int PACKET3_INVALIDATE_TLBS_PASID (int ) ;
 int amdgpu_fence_emit_polling (struct amdgpu_ring*,int *) ;
 long amdgpu_fence_wait_polling (struct amdgpu_ring*,int ,int ) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int invalidate_tlbs_with_kiq(struct amdgpu_device *adev, uint16_t pasid)
{
 signed long r;
 uint32_t seq;
 struct amdgpu_ring *ring = &adev->gfx.kiq.ring;

 spin_lock(&adev->gfx.kiq.ring_lock);
 amdgpu_ring_alloc(ring, 12);
 amdgpu_ring_write(ring, PACKET3(PACKET3_INVALIDATE_TLBS, 0));
 amdgpu_ring_write(ring,
   PACKET3_INVALIDATE_TLBS_DST_SEL(1) |
   PACKET3_INVALIDATE_TLBS_PASID(pasid));
 amdgpu_fence_emit_polling(ring, &seq);
 amdgpu_ring_commit(ring);
 spin_unlock(&adev->gfx.kiq.ring_lock);

 r = amdgpu_fence_wait_polling(ring, seq, adev->usec_timeout);
 if (r < 1) {
  DRM_ERROR("wait for kiq fence error: %ld.\n", r);
  return -ETIME;
 }

 return 0;
}
