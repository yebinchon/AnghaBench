
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_ctrl {int color_depth; scalar_t__ base; } ;
typedef enum edp_color_depth { ____Placeholder_edp_color_depth } edp_color_depth ;


 int EDP_10BIT ;
 int EDP_12BIT ;
 int EDP_16BIT ;
 int EDP_6BIT ;
 int EDP_8BIT ;
 int EDP_MISC1_MISC0_COLOR (int) ;
 int EDP_MISC1_MISC0_SYNC ;
 scalar_t__ REG_EDP_MISC1_MISC0 ;
 int edp_read (scalar_t__) ;
 int edp_write (scalar_t__,int ) ;

__attribute__((used)) static void edp_clock_synchrous(struct edp_ctrl *ctrl, int sync)
{
 u32 data;
 enum edp_color_depth depth;

 data = edp_read(ctrl->base + REG_EDP_MISC1_MISC0);

 if (sync)
  data |= EDP_MISC1_MISC0_SYNC;
 else
  data &= ~EDP_MISC1_MISC0_SYNC;


 depth = EDP_6BIT;
 if (ctrl->color_depth == 8)
  depth = EDP_8BIT;
 else if (ctrl->color_depth == 10)
  depth = EDP_10BIT;
 else if (ctrl->color_depth == 12)
  depth = EDP_12BIT;
 else if (ctrl->color_depth == 16)
  depth = EDP_16BIT;

 data |= EDP_MISC1_MISC0_COLOR(depth);

 edp_write(ctrl->base + REG_EDP_MISC1_MISC0, data);
}
