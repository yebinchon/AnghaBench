
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct etnaviv_gpu* devdata; } ;
struct etnaviv_gpu {unsigned long freq_scale; } ;



__attribute__((used)) static int
etnaviv_gpu_cooling_get_cur_state(struct thermal_cooling_device *cdev,
      unsigned long *state)
{
 struct etnaviv_gpu *gpu = cdev->devdata;

 *state = gpu->freq_scale;

 return 0;
}
