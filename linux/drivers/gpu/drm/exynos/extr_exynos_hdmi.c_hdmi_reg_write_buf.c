
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct hdmi_context {scalar_t__ regs; } ;


 scalar_t__ hdmi_map_reg (struct hdmi_context*,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hdmi_reg_write_buf(struct hdmi_context *hdata, u32 reg_id,
          u8 *buf, int size)
{
 for (reg_id = hdmi_map_reg(hdata, reg_id); size; --size, reg_id += 4)
  writel(*buf++, hdata->regs + reg_id);
}
