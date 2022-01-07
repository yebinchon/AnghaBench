
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu_state {int nr_gmu_registers; int * gmu_registers; } ;
struct a6xx_gpu {int gmu; } ;


 int REG_A6XX_GMU_AO_AHB_FENCE_CTRL ;
 int _a6xx_get_gmu_registers (struct msm_gpu*,struct a6xx_gpu_state*,int *,int *) ;
 int a6xx_gmu_gx_is_on (int *) ;
 int * a6xx_gmu_reglist ;
 int gpu_write (struct msm_gpu*,int ,int ) ;
 int * state_kcalloc (struct a6xx_gpu_state*,int,int) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a6xx_get_gmu_registers(struct msm_gpu *gpu,
  struct a6xx_gpu_state *a6xx_state)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);

 a6xx_state->gmu_registers = state_kcalloc(a6xx_state,
  2, sizeof(*a6xx_state->gmu_registers));

 if (!a6xx_state->gmu_registers)
  return;

 a6xx_state->nr_gmu_registers = 2;


 _a6xx_get_gmu_registers(gpu, a6xx_state, &a6xx_gmu_reglist[0],
  &a6xx_state->gmu_registers[0]);

 if (!a6xx_gmu_gx_is_on(&a6xx_gpu->gmu))
  return;


 gpu_write(gpu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, 0);

 _a6xx_get_gmu_registers(gpu, a6xx_state, &a6xx_gmu_reglist[1],
  &a6xx_state->gmu_registers[1]);
}
