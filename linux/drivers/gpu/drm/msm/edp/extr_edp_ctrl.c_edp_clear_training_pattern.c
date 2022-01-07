
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_ctrl {int dpcd; } ;


 int drm_dp_link_train_channel_eq_delay (int ) ;
 int edp_train_pattern_set_write (struct edp_ctrl*,int ) ;

__attribute__((used)) static int edp_clear_training_pattern(struct edp_ctrl *ctrl)
{
 int ret;

 ret = edp_train_pattern_set_write(ctrl, 0);

 drm_dp_link_train_channel_eq_delay(ctrl->dpcd);

 return ret;
}
