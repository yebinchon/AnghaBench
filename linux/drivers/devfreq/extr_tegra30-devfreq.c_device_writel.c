
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_devfreq_device {scalar_t__ regs; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void device_writel(struct tegra_devfreq_device *dev, u32 val,
     u32 offset)
{
 writel_relaxed(val, dev->regs + offset);
}
