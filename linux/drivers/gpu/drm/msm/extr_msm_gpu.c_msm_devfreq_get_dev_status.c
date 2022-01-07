
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time; } ;
struct msm_gpu {TYPE_1__ devfreq; TYPE_2__* funcs; int core_clk; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {int total_time; int busy_time; int current_frequency; } ;
typedef int ktime_t ;
struct TYPE_4__ {int (* gpu_busy ) (struct msm_gpu*) ;int (* gpu_get_freq ) (struct msm_gpu*) ;} ;


 int clk_get_rate (int ) ;
 int ktime_get () ;
 int ktime_us_delta (int ,int ) ;
 struct msm_gpu* platform_get_drvdata (int ) ;
 int stub1 (struct msm_gpu*) ;
 int stub2 (struct msm_gpu*) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int msm_devfreq_get_dev_status(struct device *dev,
  struct devfreq_dev_status *status)
{
 struct msm_gpu *gpu = platform_get_drvdata(to_platform_device(dev));
 ktime_t time;

 if (gpu->funcs->gpu_get_freq)
  status->current_frequency = gpu->funcs->gpu_get_freq(gpu);
 else
  status->current_frequency = clk_get_rate(gpu->core_clk);

 status->busy_time = gpu->funcs->gpu_busy(gpu);

 time = ktime_get();
 status->total_time = ktime_us_delta(time, gpu->devfreq.time);
 gpu->devfreq.time = time;

 return 0;
}
