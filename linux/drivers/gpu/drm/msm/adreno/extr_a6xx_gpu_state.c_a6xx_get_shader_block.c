
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_shader_block {int size; int type; } ;
struct a6xx_gpu_state_obj {int data; struct a6xx_shader_block const* handle; } ;
struct a6xx_gpu_state {int dummy; } ;
struct a6xx_crashdumper {int iova; int * ptr; } ;


 int A6XX_CD_DATA_OFFSET ;
 size_t A6XX_CD_DATA_SIZE ;
 int A6XX_NUM_SHADER_BANKS ;
 int CRASHDUMP_FINI (int *) ;
 scalar_t__ CRASHDUMP_READ (int *,int ,int,int) ;
 scalar_t__ CRASHDUMP_WRITE (int *,int ,int) ;
 int REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE ;
 int REG_A6XX_HLSQ_DBG_READ_SEL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ a6xx_crashdumper_run (struct msm_gpu*,struct a6xx_crashdumper*) ;
 int state_kmemdup (struct a6xx_gpu_state*,int *,size_t) ;

__attribute__((used)) static void a6xx_get_shader_block(struct msm_gpu *gpu,
  struct a6xx_gpu_state *a6xx_state,
  const struct a6xx_shader_block *block,
  struct a6xx_gpu_state_obj *obj,
  struct a6xx_crashdumper *dumper)
{
 u64 *in = dumper->ptr;
 size_t datasize = block->size * A6XX_NUM_SHADER_BANKS * sizeof(u32);
 int i;

 if (WARN_ON(datasize > A6XX_CD_DATA_SIZE))
  return;

 for (i = 0; i < A6XX_NUM_SHADER_BANKS; i++) {
  in += CRASHDUMP_WRITE(in, REG_A6XX_HLSQ_DBG_READ_SEL,
   (block->type << 8) | i);

  in += CRASHDUMP_READ(in, REG_A6XX_HLSQ_DBG_AHB_READ_APERTURE,
   block->size, dumper->iova + A6XX_CD_DATA_OFFSET);
 }

 CRASHDUMP_FINI(in);

 if (a6xx_crashdumper_run(gpu, dumper))
  return;

 obj->handle = block;
 obj->data = state_kmemdup(a6xx_state, dumper->ptr + A6XX_CD_DATA_OFFSET,
  datasize);
}
