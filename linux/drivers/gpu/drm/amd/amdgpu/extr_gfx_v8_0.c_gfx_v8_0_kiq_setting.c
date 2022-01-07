
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int me; int pipe; int queue; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmRLC_CP_SCHEDULERS ;

__attribute__((used)) static void gfx_v8_0_kiq_setting(struct amdgpu_ring *ring)
{
 uint32_t tmp;
 struct amdgpu_device *adev = ring->adev;


 tmp = RREG32(mmRLC_CP_SCHEDULERS);
 tmp &= 0xffffff00;
 tmp |= (ring->me << 5) | (ring->pipe << 3) | (ring->queue);
 WREG32(mmRLC_CP_SCHEDULERS, tmp);
 tmp |= 0x80;
 WREG32(mmRLC_CP_SCHEDULERS, tmp);
}
