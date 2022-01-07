
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mdp5_pipeline {scalar_t__ r_mixer; struct mdp5_hw_mixer* mixer; } ;
struct mdp5_hw_mixer {int lm; } ;
struct mdp5_ctl_manager {TYPE_1__* dev; } ;
struct mdp5_ctl {int cursor_on; int pending_ctl_trigger; int hw_lock; int id; struct mdp5_ctl_manager* ctlm; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,...) ;
 int EINVAL ;
 int MDP5_CTL_LAYER_REG_CURSOR_OUT ;
 int REG_MDP5_CTL_LAYER_REG (int ,int ) ;
 scalar_t__ WARN_ON (int) ;
 int ctl_read (struct mdp5_ctl*,int ) ;
 int ctl_write (struct mdp5_ctl*,int ,int ) ;
 int mdp_ctl_flush_mask_cursor (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mdp5_ctl_set_cursor(struct mdp5_ctl *ctl, struct mdp5_pipeline *pipeline,
   int cursor_id, bool enable)
{
 struct mdp5_ctl_manager *ctl_mgr = ctl->ctlm;
 unsigned long flags;
 u32 blend_cfg;
 struct mdp5_hw_mixer *mixer = pipeline->mixer;

 if (WARN_ON(!mixer)) {
  DRM_DEV_ERROR(ctl_mgr->dev->dev, "CTL %d cannot find LM",
   ctl->id);
  return -EINVAL;
 }

 if (pipeline->r_mixer) {
  DRM_DEV_ERROR(ctl_mgr->dev->dev, "unsupported configuration");
  return -EINVAL;
 }

 spin_lock_irqsave(&ctl->hw_lock, flags);

 blend_cfg = ctl_read(ctl, REG_MDP5_CTL_LAYER_REG(ctl->id, mixer->lm));

 if (enable)
  blend_cfg |= MDP5_CTL_LAYER_REG_CURSOR_OUT;
 else
  blend_cfg &= ~MDP5_CTL_LAYER_REG_CURSOR_OUT;

 ctl_write(ctl, REG_MDP5_CTL_LAYER_REG(ctl->id, mixer->lm), blend_cfg);
 ctl->cursor_on = enable;

 spin_unlock_irqrestore(&ctl->hw_lock, flags);

 ctl->pending_ctl_trigger = mdp_ctl_flush_mask_cursor(cursor_id);

 return 0;
}
