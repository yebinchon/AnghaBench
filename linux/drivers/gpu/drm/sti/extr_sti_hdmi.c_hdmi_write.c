
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_hdmi {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

void hdmi_write(struct sti_hdmi *hdmi, u32 val, int offset)
{
 writel(val, hdmi->regs + offset);
}
