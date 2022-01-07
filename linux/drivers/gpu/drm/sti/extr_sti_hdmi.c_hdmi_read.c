
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_hdmi {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

u32 hdmi_read(struct sti_hdmi *hdmi, int offset)
{
 return readl(hdmi->regs + offset);
}
