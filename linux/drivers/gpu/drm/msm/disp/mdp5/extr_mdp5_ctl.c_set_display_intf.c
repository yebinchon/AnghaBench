
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_kms {int resource_lock; } ;
struct mdp5_interface {int num; int type; } ;


 int BUG () ;
 int MDP5_DISP_INTF_SEL_INTF0 (int ) ;
 int MDP5_DISP_INTF_SEL_INTF0__MASK ;
 int MDP5_DISP_INTF_SEL_INTF1 (int ) ;
 int MDP5_DISP_INTF_SEL_INTF1__MASK ;
 int MDP5_DISP_INTF_SEL_INTF2 (int ) ;
 int MDP5_DISP_INTF_SEL_INTF2__MASK ;
 int MDP5_DISP_INTF_SEL_INTF3 (int ) ;
 int MDP5_DISP_INTF_SEL_INTF3__MASK ;
 int REG_MDP5_DISP_INTF_SEL ;
 int mdp5_read (struct mdp5_kms*,int ) ;
 int mdp5_write (struct mdp5_kms*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_display_intf(struct mdp5_kms *mdp5_kms,
  struct mdp5_interface *intf)
{
 unsigned long flags;
 u32 intf_sel;

 spin_lock_irqsave(&mdp5_kms->resource_lock, flags);
 intf_sel = mdp5_read(mdp5_kms, REG_MDP5_DISP_INTF_SEL);

 switch (intf->num) {
 case 0:
  intf_sel &= ~MDP5_DISP_INTF_SEL_INTF0__MASK;
  intf_sel |= MDP5_DISP_INTF_SEL_INTF0(intf->type);
  break;
 case 1:
  intf_sel &= ~MDP5_DISP_INTF_SEL_INTF1__MASK;
  intf_sel |= MDP5_DISP_INTF_SEL_INTF1(intf->type);
  break;
 case 2:
  intf_sel &= ~MDP5_DISP_INTF_SEL_INTF2__MASK;
  intf_sel |= MDP5_DISP_INTF_SEL_INTF2(intf->type);
  break;
 case 3:
  intf_sel &= ~MDP5_DISP_INTF_SEL_INTF3__MASK;
  intf_sel |= MDP5_DISP_INTF_SEL_INTF3(intf->type);
  break;
 default:
  BUG();
  break;
 }

 mdp5_write(mdp5_kms, REG_MDP5_DISP_INTF_SEL, intf_sel);
 spin_unlock_irqrestore(&mdp5_kms->resource_lock, flags);
}
