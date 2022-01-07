
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* slot; } ;
struct panfrost_device {int dev; TYPE_2__ devfreq; int clock; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {int current_frequency; int total_time; int busy_time; } ;
struct TYPE_3__ {int busy_time; int idle_time; } ;


 int NUM_JOB_SLOTS ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 int ktime_add (int ,int ) ;
 int ktime_to_ns (int ) ;
 int panfrost_devfreq_reset (struct panfrost_device*) ;
 int panfrost_devfreq_update_utilization (struct panfrost_device*,int) ;
 struct panfrost_device* platform_get_drvdata (int ) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int panfrost_devfreq_get_dev_status(struct device *dev,
        struct devfreq_dev_status *status)
{
 struct panfrost_device *pfdev = platform_get_drvdata(to_platform_device(dev));
 int i;

 for (i = 0; i < NUM_JOB_SLOTS; i++) {
  panfrost_devfreq_update_utilization(pfdev, i);
 }

 status->current_frequency = clk_get_rate(pfdev->clock);
 status->total_time = ktime_to_ns(ktime_add(pfdev->devfreq.slot[0].busy_time,
         pfdev->devfreq.slot[0].idle_time));

 status->busy_time = 0;
 for (i = 0; i < NUM_JOB_SLOTS; i++) {
  status->busy_time += ktime_to_ns(pfdev->devfreq.slot[i].busy_time);
 }




 panfrost_devfreq_reset(pfdev);

 dev_dbg(pfdev->dev, "busy %lu total %lu %lu %% freq %lu MHz\n", status->busy_time,
  status->total_time,
  status->busy_time / (status->total_time / 100),
  status->current_frequency / 1000 / 1000);

 return 0;
}
