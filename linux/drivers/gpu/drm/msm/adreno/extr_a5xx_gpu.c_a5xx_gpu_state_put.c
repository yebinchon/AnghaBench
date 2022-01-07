
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu_state {int ref; } ;


 scalar_t__ IS_ERR_OR_NULL (struct msm_gpu_state*) ;
 int a5xx_gpu_state_destroy ;
 int kref_put (int *,int ) ;

int a5xx_gpu_state_put(struct msm_gpu_state *state)
{
 if (IS_ERR_OR_NULL(state))
  return 1;

 return kref_put(&state->ref, a5xx_gpu_state_destroy);
}
