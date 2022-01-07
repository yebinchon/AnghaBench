
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_devfreq_device {int dummy; } ;
struct tegra_devfreq {struct tegra_devfreq_device* devices; int cur_freq; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {unsigned long current_frequency; int busy_time; unsigned long total_time; struct tegra_devfreq* private_data; } ;


 int ACTMON_DEV_AVG_COUNT ;
 unsigned long ACTMON_SAMPLING_PERIOD ;
 int BUS_SATURATION_RATIO ;
 unsigned long KHZ ;
 size_t MCALL ;
 unsigned long READ_ONCE (int ) ;
 struct tegra_devfreq* dev_get_drvdata (struct device*) ;
 int device_readl (struct tegra_devfreq_device*,int ) ;
 int min (int,unsigned long) ;

__attribute__((used)) static int tegra_devfreq_get_dev_status(struct device *dev,
     struct devfreq_dev_status *stat)
{
 struct tegra_devfreq *tegra = dev_get_drvdata(dev);
 struct tegra_devfreq_device *actmon_dev;
 unsigned long cur_freq;

 cur_freq = READ_ONCE(tegra->cur_freq);


 stat->private_data = tegra;


 stat->current_frequency = cur_freq * KHZ;

 actmon_dev = &tegra->devices[MCALL];


 stat->busy_time = device_readl(actmon_dev, ACTMON_DEV_AVG_COUNT);


 stat->busy_time *= 100 / BUS_SATURATION_RATIO;


 stat->total_time = ACTMON_SAMPLING_PERIOD * cur_freq;

 stat->busy_time = min(stat->busy_time, stat->total_time);

 return 0;
}
