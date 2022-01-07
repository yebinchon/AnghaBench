
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct a6xx_gpu_state {int nr_shaders; int * shaders; } ;
struct a6xx_crashdumper {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int a6xx_get_shader_block (struct msm_gpu*,struct a6xx_gpu_state*,int *,int *,struct a6xx_crashdumper*) ;
 int * a6xx_shader_blocks ;
 int * state_kcalloc (struct a6xx_gpu_state*,int,int) ;

__attribute__((used)) static void a6xx_get_shaders(struct msm_gpu *gpu,
  struct a6xx_gpu_state *a6xx_state,
  struct a6xx_crashdumper *dumper)
{
 int i;

 a6xx_state->shaders = state_kcalloc(a6xx_state,
  ARRAY_SIZE(a6xx_shader_blocks), sizeof(*a6xx_state->shaders));

 if (!a6xx_state->shaders)
  return;

 a6xx_state->nr_shaders = ARRAY_SIZE(a6xx_shader_blocks);

 for (i = 0; i < ARRAY_SIZE(a6xx_shader_blocks); i++)
  a6xx_get_shader_block(gpu, a6xx_state, &a6xx_shader_blocks[i],
   &a6xx_state->shaders[i], dumper);
}
