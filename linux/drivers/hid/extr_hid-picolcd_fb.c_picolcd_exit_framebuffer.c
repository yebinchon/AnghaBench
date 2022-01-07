
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct picolcd_fb_data {int lock; int * picolcd; } ;
struct picolcd_data {struct fb_info* fb_info; TYPE_1__* hdev; } ;
struct fb_info {int deferred_work; struct picolcd_fb_data* par; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_fb_update_rate ;
 int device_remove_file (int *,int *) ;
 int flush_delayed_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unregister_framebuffer (struct fb_info*) ;

void picolcd_exit_framebuffer(struct picolcd_data *data)
{
 struct fb_info *info = data->fb_info;
 struct picolcd_fb_data *fbdata;
 unsigned long flags;

 if (!info)
  return;

 device_remove_file(&data->hdev->dev, &dev_attr_fb_update_rate);
 fbdata = info->par;


 spin_lock_irqsave(&fbdata->lock, flags);
 fbdata->picolcd = ((void*)0);
 spin_unlock_irqrestore(&fbdata->lock, flags);




 flush_delayed_work(&info->deferred_work);

 data->fb_info = ((void*)0);
 unregister_framebuffer(info);
}
