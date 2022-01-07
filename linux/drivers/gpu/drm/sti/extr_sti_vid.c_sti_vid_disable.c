
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_vid {scalar_t__ regs; } ;


 scalar_t__ VID_CTL ;
 int VID_CTL_IGNORE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void sti_vid_disable(struct sti_vid *vid)
{
 u32 val;


 val = readl(vid->regs + VID_CTL);
 val |= VID_CTL_IGNORE;
 writel(val, vid->regs + VID_CTL);
}
