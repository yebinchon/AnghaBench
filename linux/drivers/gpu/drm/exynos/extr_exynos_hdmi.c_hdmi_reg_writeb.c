
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hdmi_context {scalar_t__ regs; } ;


 scalar_t__ hdmi_map_reg (struct hdmi_context*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hdmi_reg_writeb(struct hdmi_context *hdata,
     u32 reg_id, u8 value)
{
 writel(value, hdata->regs + hdmi_map_reg(hdata, reg_id));
}
