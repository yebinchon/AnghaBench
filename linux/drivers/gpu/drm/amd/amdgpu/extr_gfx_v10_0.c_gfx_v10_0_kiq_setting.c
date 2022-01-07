
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int me; int pipe; int queue; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmRLC_CP_SCHEDULERS ;

__attribute__((used)) static void gfx_v10_0_kiq_setting(struct amdgpu_ring *ring)
{
 uint32_t tmp;
 struct amdgpu_device *adev = ring->adev;


 tmp = RREG32_SOC15(GC, 0, mmRLC_CP_SCHEDULERS);
 tmp &= 0xffffff00;
 tmp |= (ring->me << 5) | (ring->pipe << 3) | (ring->queue);
 WREG32_SOC15(GC, 0, mmRLC_CP_SCHEDULERS, tmp);
 tmp |= 0x80;
 WREG32_SOC15(GC, 0, mmRLC_CP_SCHEDULERS, tmp);
}
