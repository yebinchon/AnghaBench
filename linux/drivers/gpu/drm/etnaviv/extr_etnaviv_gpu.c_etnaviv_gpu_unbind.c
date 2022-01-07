
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int initialized; int * cooling; int fence_idr; int * drm; int buffer; int dev; int wq; } ;
struct device {int dummy; } ;


 int CONFIG_DRM_ETNAVIV_THERMAL ;
 int DBG (char*,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 int destroy_workqueue (int ) ;
 struct etnaviv_gpu* dev_get_drvdata (struct device*) ;
 int dev_name (int ) ;
 int etnaviv_cmdbuf_free (int *) ;
 int etnaviv_gpu_hw_suspend (struct etnaviv_gpu*) ;
 int etnaviv_iommu_global_fini (struct etnaviv_gpu*) ;
 int etnaviv_sched_fini (struct etnaviv_gpu*) ;
 int flush_workqueue (int ) ;
 int idr_destroy (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync_suspend (int ) ;
 int thermal_cooling_device_unregister (int *) ;

__attribute__((used)) static void etnaviv_gpu_unbind(struct device *dev, struct device *master,
 void *data)
{
 struct etnaviv_gpu *gpu = dev_get_drvdata(dev);

 DBG("%s", dev_name(gpu->dev));

 flush_workqueue(gpu->wq);
 destroy_workqueue(gpu->wq);

 etnaviv_sched_fini(gpu);





 etnaviv_gpu_hw_suspend(gpu);


 if (gpu->initialized) {
  etnaviv_cmdbuf_free(&gpu->buffer);
  etnaviv_iommu_global_fini(gpu);
  gpu->initialized = 0;
 }

 gpu->drm = ((void*)0);
 idr_destroy(&gpu->fence_idr);

 if (IS_ENABLED(CONFIG_DRM_ETNAVIV_THERMAL))
  thermal_cooling_device_unregister(gpu->cooling);
 gpu->cooling = ((void*)0);
}
