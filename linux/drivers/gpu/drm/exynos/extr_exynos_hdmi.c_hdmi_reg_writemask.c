
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_context {int regs; } ;


 int hdmi_map_reg (struct hdmi_context*,int) ;
 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static inline void hdmi_reg_writemask(struct hdmi_context *hdata,
     u32 reg_id, u32 value, u32 mask)
{
 u32 old;

 reg_id = hdmi_map_reg(hdata, reg_id);
 old = readl(hdata->regs + reg_id);
 value = (value & mask) | (old & ~mask);
 writel(value, hdata->regs + reg_id);
}
