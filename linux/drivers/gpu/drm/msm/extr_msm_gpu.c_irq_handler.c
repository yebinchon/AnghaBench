
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* funcs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* irq ) (struct msm_gpu*) ;} ;


 int stub1 (struct msm_gpu*) ;

__attribute__((used)) static irqreturn_t irq_handler(int irq, void *data)
{
 struct msm_gpu *gpu = data;
 return gpu->funcs->irq(gpu);
}
