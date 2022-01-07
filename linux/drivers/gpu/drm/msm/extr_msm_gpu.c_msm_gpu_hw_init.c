
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_gpu {int needs_hw_init; int irq; TYPE_2__* funcs; TYPE_1__* dev; } ;
struct TYPE_4__ {int (* hw_init ) (struct msm_gpu*) ;} ;
struct TYPE_3__ {int struct_mutex; } ;


 int WARN_ON (int) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct msm_gpu*) ;

int msm_gpu_hw_init(struct msm_gpu *gpu)
{
 int ret;

 WARN_ON(!mutex_is_locked(&gpu->dev->struct_mutex));

 if (!gpu->needs_hw_init)
  return 0;

 disable_irq(gpu->irq);
 ret = gpu->funcs->hw_init(gpu);
 if (!ret)
  gpu->needs_hw_init = 0;
 enable_irq(gpu->irq);

 return ret;
}
