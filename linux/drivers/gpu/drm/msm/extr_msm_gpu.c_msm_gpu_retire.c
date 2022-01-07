
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {int retire_work; TYPE_1__* dev; } ;
struct msm_drm_private {int wq; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 int queue_work (int ,int *) ;
 int update_sw_cntrs (struct msm_gpu*) ;

void msm_gpu_retire(struct msm_gpu *gpu)
{
 struct msm_drm_private *priv = gpu->dev->dev_private;
 queue_work(priv->wq, &gpu->retire_work);
 update_sw_cntrs(gpu);
}
