
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_2__ {int gpu_clock_mutex; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int GC ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmRLC_CAPTURE_GPU_CLOCK_COUNT ;
 int mmRLC_GPU_CLOCK_COUNT_LSB ;
 int mmRLC_GPU_CLOCK_COUNT_MSB ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static uint64_t gfx_v9_0_get_gpu_clock_counter(struct amdgpu_device *adev)
{
 uint64_t clock;

 mutex_lock(&adev->gfx.gpu_clock_mutex);
 WREG32_SOC15(GC, 0, mmRLC_CAPTURE_GPU_CLOCK_COUNT, 1);
 clock = (uint64_t)RREG32_SOC15(GC, 0, mmRLC_GPU_CLOCK_COUNT_LSB) |
  ((uint64_t)RREG32_SOC15(GC, 0, mmRLC_GPU_CLOCK_COUNT_MSB) << 32ULL);
 mutex_unlock(&adev->gfx.gpu_clock_mutex);
 return clock;
}
