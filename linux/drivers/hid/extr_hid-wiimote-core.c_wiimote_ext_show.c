
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exttype; int lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int __u8 ;
 struct wiimote_data* dev_to_wii (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t wiimote_ext_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct wiimote_data *wdata = dev_to_wii(dev);
 __u8 type;
 unsigned long flags;

 spin_lock_irqsave(&wdata->state.lock, flags);
 type = wdata->state.exttype;
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 switch (type) {
 case 131:
  return sprintf(buf, "none\n");
 case 130:
  return sprintf(buf, "nunchuk\n");
 case 134:
  return sprintf(buf, "classic\n");
 case 135:
  return sprintf(buf, "balanceboard\n");
 case 129:
  return sprintf(buf, "procontroller\n");
 case 133:
  return sprintf(buf, "drums\n");
 case 132:
  return sprintf(buf, "guitar\n");
 case 128:

 default:
  return sprintf(buf, "unknown\n");
 }
}
