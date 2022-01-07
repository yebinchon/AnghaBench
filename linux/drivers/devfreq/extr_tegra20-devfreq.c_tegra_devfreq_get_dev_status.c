
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_devfreq {scalar_t__ regs; int emc_clock; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {int busy_time; int total_time; int current_frequency; } ;


 int EMC_GATHER_CLEAR ;
 int EMC_GATHER_ENABLE ;
 scalar_t__ MC_STAT_CONTROL ;
 scalar_t__ MC_STAT_EMC_CLOCKS ;
 scalar_t__ MC_STAT_EMC_COUNT ;
 int clk_get_rate (int ) ;
 struct tegra_devfreq* dev_get_drvdata (struct device*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int tegra_devfreq_get_dev_status(struct device *dev,
     struct devfreq_dev_status *stat)
{
 struct tegra_devfreq *tegra = dev_get_drvdata(dev);
 stat->busy_time = readl_relaxed(tegra->regs + MC_STAT_EMC_COUNT);
 stat->total_time = readl_relaxed(tegra->regs + MC_STAT_EMC_CLOCKS) / 8;
 stat->current_frequency = clk_get_rate(tegra->emc_clock);

 writel_relaxed(EMC_GATHER_CLEAR, tegra->regs + MC_STAT_CONTROL);
 writel_relaxed(EMC_GATHER_ENABLE, tegra->regs + MC_STAT_CONTROL);

 return 0;
}
