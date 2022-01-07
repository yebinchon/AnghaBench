
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_ctrl {scalar_t__ base; } ;


 int EDP_MAINLINK_CTRL_ENABLE ;
 int EDP_MAINLINK_CTRL_RESET ;
 scalar_t__ REG_EDP_MAINLINK_CTRL ;
 int edp_write (scalar_t__,int ) ;
 int usleep_range (int,int) ;
 int wmb () ;

__attribute__((used)) static void edp_mainlink_ctrl(struct edp_ctrl *ctrl, int enable)
{
 u32 data = 0;

 edp_write(ctrl->base + REG_EDP_MAINLINK_CTRL, EDP_MAINLINK_CTRL_RESET);

 wmb();
 usleep_range(500, 1000);

 if (enable)
  data |= EDP_MAINLINK_CTRL_ENABLE;

 edp_write(ctrl->base + REG_EDP_MAINLINK_CTRL, data);
}
