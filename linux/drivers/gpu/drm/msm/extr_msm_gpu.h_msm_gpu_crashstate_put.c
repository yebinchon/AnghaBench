
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_gpu {TYPE_2__* dev; int * crashstate; TYPE_1__* funcs; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct TYPE_3__ {scalar_t__ (* gpu_state_put ) (int *) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static inline void msm_gpu_crashstate_put(struct msm_gpu *gpu)
{
 mutex_lock(&gpu->dev->struct_mutex);

 if (gpu->crashstate) {
  if (gpu->funcs->gpu_state_put(gpu->crashstate))
   gpu->crashstate = ((void*)0);
 }

 mutex_unlock(&gpu->dev->struct_mutex);
}
