
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_pipeline {scalar_t__ r_mixer; struct mdp5_interface* intf; } ;
struct mdp5_interface {int type; int mode; scalar_t__ num; } ;
struct mdp5_ctl {int hw_lock; int id; } ;


 scalar_t__ INTF0 ;


 int MDP5_CTL_OP_CMD_MODE ;
 int MDP5_CTL_OP_INTF_NUM (scalar_t__) ;
 int MDP5_CTL_OP_MODE (int ) ;
 int MDP5_CTL_OP_PACK_3D (int) ;
 int MDP5_CTL_OP_PACK_3D_ENABLE ;
 int MDP5_INTF_DSI_MODE_COMMAND ;
 int MDP5_INTF_WB_MODE_LINE ;
 int MODE_WB_2_LINE ;
 int REG_MDP5_CTL_OP (int ) ;
 int ctl_write (struct mdp5_ctl*,int ,int) ;
 int mdp5_cfg_intf_is_virtual (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_ctl_op(struct mdp5_ctl *ctl, struct mdp5_pipeline *pipeline)
{
 unsigned long flags;
 struct mdp5_interface *intf = pipeline->intf;
 u32 ctl_op = 0;

 if (!mdp5_cfg_intf_is_virtual(intf->type))
  ctl_op |= MDP5_CTL_OP_INTF_NUM(INTF0 + intf->num);

 switch (intf->type) {
 case 129:
  if (intf->mode == MDP5_INTF_DSI_MODE_COMMAND)
   ctl_op |= MDP5_CTL_OP_CMD_MODE;
  break;

 case 128:
  if (intf->mode == MDP5_INTF_WB_MODE_LINE)
   ctl_op |= MDP5_CTL_OP_MODE(MODE_WB_2_LINE);
  break;

 default:
  break;
 }

 if (pipeline->r_mixer)
  ctl_op |= MDP5_CTL_OP_PACK_3D_ENABLE |
     MDP5_CTL_OP_PACK_3D(1);

 spin_lock_irqsave(&ctl->hw_lock, flags);
 ctl_write(ctl, REG_MDP5_CTL_OP(ctl->id), ctl_op);
 spin_unlock_irqrestore(&ctl->hw_lock, flags);
}
