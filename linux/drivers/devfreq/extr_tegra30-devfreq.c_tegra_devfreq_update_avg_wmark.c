
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_devfreq_device {int avg_count; } ;
struct tegra_devfreq {int max_freq; } ;


 int ACTMON_DEFAULT_AVG_BAND ;
 int ACTMON_DEV_AVG_LOWER_WMARK ;
 int ACTMON_DEV_AVG_UPPER_WMARK ;
 int ACTMON_SAMPLING_PERIOD ;
 int KHZ ;
 int device_writel (struct tegra_devfreq_device*,int,int ) ;
 int max (int,int) ;

__attribute__((used)) static void tegra_devfreq_update_avg_wmark(struct tegra_devfreq *tegra,
        struct tegra_devfreq_device *dev)
{
 u32 avg = dev->avg_count;
 u32 avg_band_freq = tegra->max_freq * ACTMON_DEFAULT_AVG_BAND / KHZ;
 u32 band = avg_band_freq * ACTMON_SAMPLING_PERIOD;

 device_writel(dev, avg + band, ACTMON_DEV_AVG_UPPER_WMARK);

 avg = max(dev->avg_count, band);
 device_writel(dev, avg - band, ACTMON_DEV_AVG_LOWER_WMARK);
}
