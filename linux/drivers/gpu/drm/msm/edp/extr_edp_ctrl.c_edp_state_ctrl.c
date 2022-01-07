
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_ctrl {scalar_t__ base; } ;


 scalar_t__ REG_EDP_STATE_CTRL ;
 int edp_write (scalar_t__,int ) ;
 int wmb () ;

__attribute__((used)) static void edp_state_ctrl(struct edp_ctrl *ctrl, u32 state)
{
 edp_write(ctrl->base + REG_EDP_STATE_CTRL, state);

 wmb();
}
