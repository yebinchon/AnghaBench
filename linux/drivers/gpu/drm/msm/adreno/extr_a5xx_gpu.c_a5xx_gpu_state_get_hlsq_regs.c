
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct msm_gpu {int aspace; } ;
struct a5xx_gpu_state {int hlsqregs; } ;
struct a5xx_crashdumper {int* ptr; int iova; int bo; int member_0; } ;
struct TYPE_3__ {int count; int type; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GFP_KERNEL ;
 scalar_t__ REG_A5XX_HLSQ_DBG_AHB_READ_APERTURE ;
 scalar_t__ REG_A5XX_HLSQ_DBG_READ_SEL ;
 int SZ_1K ;
 scalar_t__ a5xx_crashdumper_init (struct msm_gpu*,struct a5xx_crashdumper*) ;
 scalar_t__ a5xx_crashdumper_run (struct msm_gpu*,struct a5xx_crashdumper*) ;
 TYPE_1__* a5xx_hlsq_aperture_regs ;
 int kcalloc (int,int,int ) ;
 int kfree (int ) ;
 int memcpy (int ,int*,int) ;
 int msm_gem_kernel_put (int ,int ,int) ;

__attribute__((used)) static void a5xx_gpu_state_get_hlsq_regs(struct msm_gpu *gpu,
  struct a5xx_gpu_state *a5xx_state)
{
 struct a5xx_crashdumper dumper = { 0 };
 u32 offset, count = 0;
 u64 *ptr;
 int i;

 if (a5xx_crashdumper_init(gpu, &dumper))
  return;


 ptr = dumper.ptr;


 offset = dumper.iova + (256 * SZ_1K);


 for (i = 0; i < ARRAY_SIZE(a5xx_hlsq_aperture_regs); i++)
  count += a5xx_hlsq_aperture_regs[i].count;

 a5xx_state->hlsqregs = kcalloc(count, sizeof(u32), GFP_KERNEL);
 if (!a5xx_state->hlsqregs)
  return;


 for (i = 0; i < ARRAY_SIZE(a5xx_hlsq_aperture_regs); i++) {
  u32 type = a5xx_hlsq_aperture_regs[i].type;
  u32 c = a5xx_hlsq_aperture_regs[i].count;


  *ptr++ = ((u64) type << 8);
  *ptr++ = (((u64) REG_A5XX_HLSQ_DBG_READ_SEL) << 44) |
   (1 << 21) | 1;

  *ptr++ = offset;
  *ptr++ = (((u64) REG_A5XX_HLSQ_DBG_AHB_READ_APERTURE) << 44)
   | c;

  offset += c * sizeof(u32);
 }


 *ptr++ = 0;
 *ptr++ = 0;

 if (a5xx_crashdumper_run(gpu, &dumper)) {
  kfree(a5xx_state->hlsqregs);
  msm_gem_kernel_put(dumper.bo, gpu->aspace, 1);
  return;
 }


 memcpy(a5xx_state->hlsqregs, dumper.ptr + (256 * SZ_1K),
  count * sizeof(u32));

 msm_gem_kernel_put(dumper.bo, gpu->aspace, 1);
}
