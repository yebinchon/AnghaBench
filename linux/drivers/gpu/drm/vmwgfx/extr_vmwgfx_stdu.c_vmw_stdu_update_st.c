
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_stdu_update {int dummy; } ;
struct TYPE_2__ {int unit; } ;
struct vmw_screen_target_display_unit {int display_height; int display_width; TYPE_1__ base; int defined; } ;
struct vmw_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 struct vmw_stdu_update* VMW_FIFO_RESERVE (struct vmw_private*,int) ;
 scalar_t__ unlikely (int ) ;
 int vmw_fifo_commit (struct vmw_private*,int) ;
 int vmw_stdu_populate_update (struct vmw_stdu_update*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int vmw_stdu_update_st(struct vmw_private *dev_priv,
         struct vmw_screen_target_display_unit *stdu)
{
 struct vmw_stdu_update *cmd;

 if (!stdu->defined) {
  DRM_ERROR("No screen target defined");
  return -EINVAL;
 }

 cmd = VMW_FIFO_RESERVE(dev_priv, sizeof(*cmd));
 if (unlikely(cmd == ((void*)0)))
  return -ENOMEM;

 vmw_stdu_populate_update(cmd, stdu->base.unit,
     0, stdu->display_width,
     0, stdu->display_height);

 vmw_fifo_commit(dev_priv, sizeof(*cmd));

 return 0;
}
