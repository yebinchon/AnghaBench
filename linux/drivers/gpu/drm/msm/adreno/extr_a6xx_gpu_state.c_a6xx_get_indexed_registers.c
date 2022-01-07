
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct msm_gpu {int dummy; } ;
struct a6xx_gpu_state {int nr_indexed_regs; TYPE_1__* indexed_regs; } ;
struct TYPE_3__ {int * data; } ;


 int ARRAY_SIZE (int *) ;
 int REG_A6XX_CP_MEM_POOL_SIZE ;
 int a6xx_cp_mempool_indexed ;
 int a6xx_get_indexed_regs (struct msm_gpu*,struct a6xx_gpu_state*,int *,TYPE_1__*) ;
 int * a6xx_indexed_reglist ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int ) ;
 TYPE_1__* state_kcalloc (struct a6xx_gpu_state*,int,int) ;

__attribute__((used)) static void a6xx_get_indexed_registers(struct msm_gpu *gpu,
  struct a6xx_gpu_state *a6xx_state)
{
 u32 mempool_size;
 int count = ARRAY_SIZE(a6xx_indexed_reglist) + 1;
 int i;

 a6xx_state->indexed_regs = state_kcalloc(a6xx_state, count,
  sizeof(a6xx_state->indexed_regs));
 if (!a6xx_state->indexed_regs)
  return;

 for (i = 0; i < ARRAY_SIZE(a6xx_indexed_reglist); i++)
  a6xx_get_indexed_regs(gpu, a6xx_state, &a6xx_indexed_reglist[i],
   &a6xx_state->indexed_regs[i]);


 mempool_size = gpu_read(gpu, REG_A6XX_CP_MEM_POOL_SIZE);
 gpu_write(gpu, REG_A6XX_CP_MEM_POOL_SIZE, 0);


 a6xx_get_indexed_regs(gpu, a6xx_state, &a6xx_cp_mempool_indexed,
  &a6xx_state->indexed_regs[i]);





 a6xx_state->indexed_regs[i].data[0x2000] = mempool_size;


 gpu_write(gpu, REG_A6XX_CP_MEM_POOL_SIZE, mempool_size);

 a6xx_state->nr_indexed_regs = count;
}
