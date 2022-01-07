
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dev_flags; } ;
struct TYPE_6__ {TYPE_2__ start; } ;
struct uhid_event {TYPE_3__ u; int type; } ;
struct uhid_device {int qlock; } ;
struct hid_device {TYPE_1__* report_enum; struct uhid_device* driver_data; } ;
struct TYPE_4__ {scalar_t__ numbered; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t HID_FEATURE_REPORT ;
 size_t HID_INPUT_REPORT ;
 size_t HID_OUTPUT_REPORT ;
 int UHID_DEV_NUMBERED_FEATURE_REPORTS ;
 int UHID_DEV_NUMBERED_INPUT_REPORTS ;
 int UHID_DEV_NUMBERED_OUTPUT_REPORTS ;
 int UHID_START ;
 struct uhid_event* kzalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uhid_queue (struct uhid_device*,struct uhid_event*) ;

__attribute__((used)) static int uhid_hid_start(struct hid_device *hid)
{
 struct uhid_device *uhid = hid->driver_data;
 struct uhid_event *ev;
 unsigned long flags;

 ev = kzalloc(sizeof(*ev), GFP_KERNEL);
 if (!ev)
  return -ENOMEM;

 ev->type = UHID_START;

 if (hid->report_enum[HID_FEATURE_REPORT].numbered)
  ev->u.start.dev_flags |= UHID_DEV_NUMBERED_FEATURE_REPORTS;
 if (hid->report_enum[HID_OUTPUT_REPORT].numbered)
  ev->u.start.dev_flags |= UHID_DEV_NUMBERED_OUTPUT_REPORTS;
 if (hid->report_enum[HID_INPUT_REPORT].numbered)
  ev->u.start.dev_flags |= UHID_DEV_NUMBERED_INPUT_REPORTS;

 spin_lock_irqsave(&uhid->qlock, flags);
 uhid_queue(uhid, ev);
 spin_unlock_irqrestore(&uhid->qlock, flags);

 return 0;
}
