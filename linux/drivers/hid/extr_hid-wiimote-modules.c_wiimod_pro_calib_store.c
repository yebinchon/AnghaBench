
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** calib_pro_sticks; int lock; int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef void* s16 ;


 int EINVAL ;
 int PAGE_SIZE ;
 int WIIPROTO_FLAG_PRO_CALIB_DONE ;
 struct wiimote_data* dev_to_wii (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sscanf (char const*,char*,void**,void**,void**,void**) ;
 int strncmp (char const*,char*,int) ;
 int strnlen (char const*,int ) ;

__attribute__((used)) static ssize_t wiimod_pro_calib_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct wiimote_data *wdata = dev_to_wii(dev);
 int r;
 s16 x1, y1, x2, y2;

 if (!strncmp(buf, "scan\n", 5)) {
  spin_lock_irq(&wdata->state.lock);
  wdata->state.flags &= ~WIIPROTO_FLAG_PRO_CALIB_DONE;
  spin_unlock_irq(&wdata->state.lock);
 } else {
  r = sscanf(buf, "%hd:%hd %hd:%hd", &x1, &y1, &x2, &y2);
  if (r != 4)
   return -EINVAL;

  spin_lock_irq(&wdata->state.lock);
  wdata->state.flags |= WIIPROTO_FLAG_PRO_CALIB_DONE;
  spin_unlock_irq(&wdata->state.lock);

  wdata->state.calib_pro_sticks[0] = x1;
  wdata->state.calib_pro_sticks[1] = y1;
  wdata->state.calib_pro_sticks[2] = x2;
  wdata->state.calib_pro_sticks[3] = y2;
 }

 return strnlen(buf, PAGE_SIZE);
}
