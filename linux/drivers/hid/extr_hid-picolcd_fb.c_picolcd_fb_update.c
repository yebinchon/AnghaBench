
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_fb_data {int force; int lock; struct picolcd_data* picolcd; int vbitmap; int bpp; int bitmap; int ready; } ;
struct picolcd_data {int hdev; } ;
struct fb_info {int lock; struct picolcd_fb_data* par; } ;


 int HID_OUTPUT_FIFO_SIZE ;
 int hid_hw_wait (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int picolcd_fb_reset (struct picolcd_data*,int ) ;
 scalar_t__ picolcd_fb_send_tile (struct picolcd_data*,int ,int,int) ;
 int picolcd_fb_update_tile (int ,int ,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void picolcd_fb_update(struct fb_info *info)
{
 int chip, tile, n;
 unsigned long flags;
 struct picolcd_fb_data *fbdata = info->par;
 struct picolcd_data *data;

 mutex_lock(&info->lock);

 spin_lock_irqsave(&fbdata->lock, flags);
 if (!fbdata->ready && fbdata->picolcd)
  picolcd_fb_reset(fbdata->picolcd, 0);
 spin_unlock_irqrestore(&fbdata->lock, flags);
 n = 0;
 for (chip = 0; chip < 4; chip++)
  for (tile = 0; tile < 8; tile++) {
   if (!fbdata->force && !picolcd_fb_update_tile(
     fbdata->vbitmap, fbdata->bitmap,
     fbdata->bpp, chip, tile))
    continue;
   n += 2;
   if (n >= HID_OUTPUT_FIFO_SIZE / 2) {
    spin_lock_irqsave(&fbdata->lock, flags);
    data = fbdata->picolcd;
    spin_unlock_irqrestore(&fbdata->lock, flags);
    mutex_unlock(&info->lock);
    if (!data)
     return;
    hid_hw_wait(data->hdev);
    mutex_lock(&info->lock);
    n = 0;
   }
   spin_lock_irqsave(&fbdata->lock, flags);
   data = fbdata->picolcd;
   spin_unlock_irqrestore(&fbdata->lock, flags);
   if (!data || picolcd_fb_send_tile(data,
     fbdata->vbitmap, chip, tile))
    goto out;
  }
 fbdata->force = 0;
 if (n) {
  spin_lock_irqsave(&fbdata->lock, flags);
  data = fbdata->picolcd;
  spin_unlock_irqrestore(&fbdata->lock, flags);
  mutex_unlock(&info->lock);
  if (data)
   hid_hw_wait(data->hdev);
  return;
 }
out:
 mutex_unlock(&info->lock);
}
