
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int cooling; int wq; int dev; int fence_event; int sync_point_work; int fence_spinlock; int fence_idr; int fence_context; struct drm_device* drm; } ;
struct etnaviv_drm_private {int num_gpus; struct etnaviv_gpu** gpu; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;
struct device {int of_node; } ;


 int CONFIG_DRM_ETNAVIV_THERMAL ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int alloc_ordered_workqueue (scalar_t__,int ) ;
 int cooling_ops ;
 int destroy_workqueue (int ) ;
 struct etnaviv_gpu* dev_get_drvdata (struct device*) ;
 scalar_t__ dev_name (struct device*) ;
 int dma_fence_context_alloc (int) ;
 int etnaviv_gpu_clk_enable (struct etnaviv_gpu*) ;
 int etnaviv_sched_fini (struct etnaviv_gpu*) ;
 int etnaviv_sched_init (struct etnaviv_gpu*) ;
 int idr_init (int *) ;
 int init_waitqueue_head (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock_init (int *) ;
 int sync_point_worker ;
 int thermal_cooling_device_unregister (int ) ;
 int thermal_of_cooling_device_register (int ,char*,struct etnaviv_gpu*,int *) ;

__attribute__((used)) static int etnaviv_gpu_bind(struct device *dev, struct device *master,
 void *data)
{
 struct drm_device *drm = data;
 struct etnaviv_drm_private *priv = drm->dev_private;
 struct etnaviv_gpu *gpu = dev_get_drvdata(dev);
 int ret;

 if (IS_ENABLED(CONFIG_DRM_ETNAVIV_THERMAL)) {
  gpu->cooling = thermal_of_cooling_device_register(dev->of_node,
    (char *)dev_name(dev), gpu, &cooling_ops);
  if (IS_ERR(gpu->cooling))
   return PTR_ERR(gpu->cooling);
 }

 gpu->wq = alloc_ordered_workqueue(dev_name(dev), 0);
 if (!gpu->wq) {
  ret = -ENOMEM;
  goto out_thermal;
 }

 ret = etnaviv_sched_init(gpu);
 if (ret)
  goto out_workqueue;




 ret = etnaviv_gpu_clk_enable(gpu);

 if (ret < 0)
  goto out_sched;


 gpu->drm = drm;
 gpu->fence_context = dma_fence_context_alloc(1);
 idr_init(&gpu->fence_idr);
 spin_lock_init(&gpu->fence_spinlock);

 INIT_WORK(&gpu->sync_point_work, sync_point_worker);
 init_waitqueue_head(&gpu->fence_event);

 priv->gpu[priv->num_gpus++] = gpu;

 pm_runtime_mark_last_busy(gpu->dev);
 pm_runtime_put_autosuspend(gpu->dev);

 return 0;

out_sched:
 etnaviv_sched_fini(gpu);

out_workqueue:
 destroy_workqueue(gpu->wq);

out_thermal:
 if (IS_ENABLED(CONFIG_DRM_ETNAVIV_THERMAL))
  thermal_cooling_device_unregister(gpu->cooling);

 return ret;
}
