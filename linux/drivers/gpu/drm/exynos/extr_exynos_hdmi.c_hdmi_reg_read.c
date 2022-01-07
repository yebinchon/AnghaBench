
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_context {scalar_t__ regs; } ;


 scalar_t__ hdmi_map_reg (struct hdmi_context*,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 hdmi_reg_read(struct hdmi_context *hdata, u32 reg_id)
{
 return readl(hdata->regs + hdmi_map_reg(hdata, reg_id));
}
