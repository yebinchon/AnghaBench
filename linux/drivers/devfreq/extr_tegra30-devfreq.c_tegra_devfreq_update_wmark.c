
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_devfreq_device {TYPE_1__* config; } ;
struct tegra_devfreq {int cur_freq; } ;
struct TYPE_2__ {int boost_down_threshold; int boost_up_threshold; } ;


 int ACTMON_DEV_LOWER_WMARK ;
 int ACTMON_DEV_UPPER_WMARK ;
 int ACTMON_SAMPLING_PERIOD ;
 int device_writel (struct tegra_devfreq_device*,int ,int ) ;
 int do_percent (int,int ) ;

__attribute__((used)) static void tegra_devfreq_update_wmark(struct tegra_devfreq *tegra,
           struct tegra_devfreq_device *dev)
{
 u32 val = tegra->cur_freq * ACTMON_SAMPLING_PERIOD;

 device_writel(dev, do_percent(val, dev->config->boost_up_threshold),
        ACTMON_DEV_UPPER_WMARK);

 device_writel(dev, do_percent(val, dev->config->boost_down_threshold),
        ACTMON_DEV_LOWER_WMARK);
}
