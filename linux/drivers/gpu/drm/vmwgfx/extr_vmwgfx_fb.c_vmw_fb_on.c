
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {struct fb_info* fb_info; } ;
struct TYPE_2__ {int active; int lock; } ;
struct vmw_fb_par {int local_work; TYPE_1__ dirty; } ;
struct fb_info {struct vmw_fb_par* par; } ;


 int EINVAL ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int vmw_fb_on(struct vmw_private *vmw_priv)
{
 struct fb_info *info;
 struct vmw_fb_par *par;
 unsigned long flags;

 if (!vmw_priv->fb_info)
  return -EINVAL;

 info = vmw_priv->fb_info;
 par = info->par;

 spin_lock_irqsave(&par->dirty.lock, flags);
 par->dirty.active = 1;
 spin_unlock_irqrestore(&par->dirty.lock, flags);






 schedule_delayed_work(&par->local_work, 0);

 return 0;
}
