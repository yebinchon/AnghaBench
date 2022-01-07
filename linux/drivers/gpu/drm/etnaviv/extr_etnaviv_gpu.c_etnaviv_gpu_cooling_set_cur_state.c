
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct etnaviv_gpu* devdata; } ;
struct etnaviv_gpu {unsigned long freq_scale; int lock; int dev; } ;


 int etnaviv_gpu_update_clock (struct etnaviv_gpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_suspended (int ) ;

__attribute__((used)) static int
etnaviv_gpu_cooling_set_cur_state(struct thermal_cooling_device *cdev,
      unsigned long state)
{
 struct etnaviv_gpu *gpu = cdev->devdata;

 mutex_lock(&gpu->lock);
 gpu->freq_scale = state;
 if (!pm_runtime_suspended(gpu->dev))
  etnaviv_gpu_update_clock(gpu);
 mutex_unlock(&gpu->lock);

 return 0;
}
