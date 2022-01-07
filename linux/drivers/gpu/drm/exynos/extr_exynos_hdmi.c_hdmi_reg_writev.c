
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_context {int regs; } ;


 int hdmi_map_reg (struct hdmi_context*,int) ;
 int writel (int,int) ;

__attribute__((used)) static inline void hdmi_reg_writev(struct hdmi_context *hdata, u32 reg_id,
       int bytes, u32 val)
{
 reg_id = hdmi_map_reg(hdata, reg_id);

 while (--bytes >= 0) {
  writel(val & 0xff, hdata->regs + reg_id);
  val >>= 8;
  reg_id += 4;
 }
}
