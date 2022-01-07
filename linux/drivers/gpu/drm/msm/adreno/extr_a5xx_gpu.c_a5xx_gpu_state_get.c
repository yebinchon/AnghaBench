
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu_state {int rbbm_status; } ;
struct msm_gpu {int dummy; } ;
struct a5xx_gpu_state {struct msm_gpu_state base; } ;


 int ENOMEM ;
 struct msm_gpu_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int REG_A5XX_RBBM_STATUS ;
 int a5xx_gpu_state_get_hlsq_regs (struct msm_gpu*,struct a5xx_gpu_state*) ;
 int a5xx_set_hwcg (struct msm_gpu*,int) ;
 int adreno_gpu_state_get (struct msm_gpu*,struct msm_gpu_state*) ;
 int gpu_read (struct msm_gpu*,int ) ;
 struct a5xx_gpu_state* kzalloc (int,int ) ;

__attribute__((used)) static struct msm_gpu_state *a5xx_gpu_state_get(struct msm_gpu *gpu)
{
 struct a5xx_gpu_state *a5xx_state = kzalloc(sizeof(*a5xx_state),
   GFP_KERNEL);

 if (!a5xx_state)
  return ERR_PTR(-ENOMEM);


 a5xx_set_hwcg(gpu, 0);


 adreno_gpu_state_get(gpu, &(a5xx_state->base));

 a5xx_state->base.rbbm_status = gpu_read(gpu, REG_A5XX_RBBM_STATUS);


 a5xx_gpu_state_get_hlsq_regs(gpu, a5xx_state);

 a5xx_set_hwcg(gpu, 1);

 return &a5xx_state->base;
}
