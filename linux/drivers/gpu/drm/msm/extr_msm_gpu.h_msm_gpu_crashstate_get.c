
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu_state {int ref; } ;
struct msm_gpu {TYPE_1__* dev; struct msm_gpu_state* crashstate; } ;
struct TYPE_2__ {int struct_mutex; } ;


 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline struct msm_gpu_state *msm_gpu_crashstate_get(struct msm_gpu *gpu)
{
 struct msm_gpu_state *state = ((void*)0);

 mutex_lock(&gpu->dev->struct_mutex);

 if (gpu->crashstate) {
  kref_get(&gpu->crashstate->ref);
  state = gpu->crashstate;
 }

 mutex_unlock(&gpu->dev->struct_mutex);

 return state;
}
