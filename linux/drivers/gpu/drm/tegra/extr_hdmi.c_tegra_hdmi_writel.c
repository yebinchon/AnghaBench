
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hdmi {scalar_t__ regs; int dev; } ;


 int trace_hdmi_writel (int ,unsigned int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_hdmi_writel(struct tegra_hdmi *hdmi, u32 value,
         unsigned int offset)
{
 trace_hdmi_writel(hdmi->dev, offset, value);
 writel(value, hdmi->regs + (offset << 2));
}
