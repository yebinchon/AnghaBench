
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_devfreq_device {scalar_t__ regs; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 device_readl(struct tegra_devfreq_device *dev, u32 offset)
{
 return readl_relaxed(dev->regs + offset);
}
