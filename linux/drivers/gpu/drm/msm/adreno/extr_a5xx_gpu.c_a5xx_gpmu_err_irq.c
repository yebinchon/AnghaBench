
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err_ratelimited (int ,char*) ;

__attribute__((used)) static void a5xx_gpmu_err_irq(struct msm_gpu *gpu)
{
 dev_err_ratelimited(gpu->dev->dev, "GPMU | voltage droop\n");
}
