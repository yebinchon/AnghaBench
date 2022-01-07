
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu_state {int rbbm_status; } ;
struct msm_gpu {int dummy; } ;


 int ENOMEM ;
 struct msm_gpu_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int REG_A3XX_RBBM_STATUS ;
 int adreno_gpu_state_get (struct msm_gpu*,struct msm_gpu_state*) ;
 int gpu_read (struct msm_gpu*,int ) ;
 struct msm_gpu_state* kzalloc (int,int ) ;

__attribute__((used)) static struct msm_gpu_state *a3xx_gpu_state_get(struct msm_gpu *gpu)
{
 struct msm_gpu_state *state = kzalloc(sizeof(*state), GFP_KERNEL);

 if (!state)
  return ERR_PTR(-ENOMEM);

 adreno_gpu_state_get(gpu, state);

 state->rbbm_status = gpu_read(gpu, REG_A3XX_RBBM_STATUS);

 return state;
}
