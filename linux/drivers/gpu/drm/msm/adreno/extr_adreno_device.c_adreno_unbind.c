
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* funcs; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* destroy ) (struct msm_gpu*) ;} ;


 struct msm_gpu* dev_get_drvdata (struct device*) ;
 int pm_runtime_force_suspend (struct device*) ;
 int set_gpu_pdev (struct msm_gpu*,int *) ;
 int stub1 (struct msm_gpu*) ;

__attribute__((used)) static void adreno_unbind(struct device *dev, struct device *master,
  void *data)
{
 struct msm_gpu *gpu = dev_get_drvdata(dev);

 pm_runtime_force_suspend(dev);
 gpu->funcs->destroy(gpu);

 set_gpu_pdev(dev_get_drvdata(master), ((void*)0));
}
