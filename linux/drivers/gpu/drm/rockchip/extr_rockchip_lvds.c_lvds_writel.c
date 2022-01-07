
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rockchip_lvds {scalar_t__ output; TYPE_1__* soc_data; scalar_t__ regs; } ;
struct TYPE_2__ {scalar_t__ ch1_offset; } ;


 scalar_t__ DISPLAY_OUTPUT_LVDS ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void lvds_writel(struct rockchip_lvds *lvds, u32 offset, u32 val)
{
 writel_relaxed(val, lvds->regs + offset);
 if (lvds->output == DISPLAY_OUTPUT_LVDS)
  return;
 writel_relaxed(val, lvds->regs + offset + lvds->soc_data->ch1_offset);
}
