
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_registers {int count; int * registers; int val1; int val0; } ;
struct a6xx_gpu_state_obj {int data; struct a6xx_registers const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;
struct a6xx_crashdumper {int* ptr; int iova; } ;


 int A6XX_CD_DATA_OFFSET ;
 int A6XX_CD_DATA_SIZE ;
 int CRASHDUMP_FINI (int*) ;
 scalar_t__ CRASHDUMP_READ (int*,int ,int,int) ;
 scalar_t__ CRASHDUMP_WRITE (int*,int ,int ) ;
 int RANGE (int *,int) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ a6xx_crashdumper_run (struct msm_gpu*,struct a6xx_crashdumper*) ;
 int state_kmemdup (struct a6xx_gpu_state*,int*,int) ;

__attribute__((used)) static void a6xx_get_crashdumper_registers(struct msm_gpu *gpu,
  struct a6xx_gpu_state *a6xx_state,
  const struct a6xx_registers *regs,
  struct a6xx_gpu_state_obj *obj,
  struct a6xx_crashdumper *dumper)

{
 u64 *in = dumper->ptr;
 u64 out = dumper->iova + A6XX_CD_DATA_OFFSET;
 int i, regcount = 0;


 if (regs->val0)
  in += CRASHDUMP_WRITE(in, regs->val0, regs->val1);

 for (i = 0; i < regs->count; i += 2) {
  u32 count = RANGE(regs->registers, i);

  in += CRASHDUMP_READ(in, regs->registers[i], count, out);

  out += count * sizeof(u32);
  regcount += count;
 }

 CRASHDUMP_FINI(in);

 if (WARN_ON((regcount * sizeof(u32)) > A6XX_CD_DATA_SIZE))
  return;

 if (a6xx_crashdumper_run(gpu, dumper))
  return;

 obj->handle = regs;
 obj->data = state_kmemdup(a6xx_state, dumper->ptr + A6XX_CD_DATA_OFFSET,
  regcount * sizeof(u32));
}
