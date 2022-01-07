
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {int name; TYPE_1__* funcs; struct msm_ringbuffer** rb; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int gpmu_dwords; int gpmu_iova; } ;
struct TYPE_2__ {int (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;


 int CP_INDIRECT_BUFFER_PFE ;
 int CP_SET_PROTECTED_MODE ;
 int DRM_ERROR (char*,int ,...) ;
 int EINVAL ;
 int OUT_PKT7 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int REG_A5XX_GPMU_CM3_SYSRESET ;
 int REG_A5XX_GPMU_GENERAL_0 ;
 int REG_A5XX_GPMU_GENERAL_1 ;
 int REG_A5XX_GPMU_WFI_CONFIG ;
 int a5xx_idle (struct msm_gpu*,struct msm_ringbuffer*) ;
 scalar_t__ adreno_is_a530 (struct adreno_gpu*) ;
 scalar_t__ gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int lower_32_bits (int ) ;
 scalar_t__ spin_usecs (struct msm_gpu*,int,int ,int,int) ;
 int stub1 (struct msm_gpu*,struct msm_ringbuffer*) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int a5xx_gpmu_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 struct msm_ringbuffer *ring = gpu->rb[0];

 if (!a5xx_gpu->gpmu_dwords)
  return 0;


 OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
 OUT_RING(ring, 0);


 OUT_PKT7(ring, CP_INDIRECT_BUFFER_PFE, 3);
 OUT_RING(ring, lower_32_bits(a5xx_gpu->gpmu_iova));
 OUT_RING(ring, upper_32_bits(a5xx_gpu->gpmu_iova));
 OUT_RING(ring, a5xx_gpu->gpmu_dwords);


 OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
 OUT_RING(ring, 1);

 gpu->funcs->flush(gpu, ring);

 if (!a5xx_idle(gpu, ring)) {
  DRM_ERROR("%s: Unable to load GPMU firmware. GPMU will not be active\n",
   gpu->name);
  return -EINVAL;
 }

 if (adreno_is_a530(adreno_gpu))
  gpu_write(gpu, REG_A5XX_GPMU_WFI_CONFIG, 0x4014);


 gpu_write(gpu, REG_A5XX_GPMU_CM3_SYSRESET, 0x0);





 if (spin_usecs(gpu, 25, REG_A5XX_GPMU_GENERAL_0, 0xFFFFFFFF,
  0xBABEFACE))
  DRM_ERROR("%s: GPMU firmware initialization timed out\n",
   gpu->name);

 if (!adreno_is_a530(adreno_gpu)) {
  u32 val = gpu_read(gpu, REG_A5XX_GPMU_GENERAL_1);

  if (val)
   DRM_ERROR("%s: GPMU firmware initialization failed: %d\n",
      gpu->name, val);
 }

 return 0;
}
