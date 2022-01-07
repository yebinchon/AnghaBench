
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hdmi {int dev; scalar_t__ regs; } ;


 int readl (scalar_t__) ;
 int trace_hdmi_readl (int ,unsigned int,int ) ;

__attribute__((used)) static inline u32 tegra_hdmi_readl(struct tegra_hdmi *hdmi,
       unsigned int offset)
{
 u32 value = readl(hdmi->regs + (offset << 2));

 trace_hdmi_readl(hdmi->dev, offset, value);

 return value;
}
