
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;

void gma_power_uninit(struct drm_device *dev)
{
 pm_runtime_disable(&dev->pdev->dev);
 pm_runtime_set_suspended(&dev->pdev->dev);
}
