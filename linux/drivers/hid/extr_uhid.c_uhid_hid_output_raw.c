
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int data; int rtype; } ;
struct TYPE_4__ {TYPE_1__ output; } ;
struct uhid_event {TYPE_2__ u; int type; } ;
struct uhid_device {int qlock; } ;
struct hid_device {struct uhid_device* driver_data; } ;
typedef int __u8 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;


 size_t UHID_DATA_MAX ;
 int UHID_FEATURE_REPORT ;
 int UHID_OUTPUT ;
 int UHID_OUTPUT_REPORT ;
 struct uhid_event* kzalloc (int,int ) ;
 int memcpy (int ,int *,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uhid_queue (struct uhid_device*,struct uhid_event*) ;

__attribute__((used)) static int uhid_hid_output_raw(struct hid_device *hid, __u8 *buf, size_t count,
          unsigned char report_type)
{
 struct uhid_device *uhid = hid->driver_data;
 __u8 rtype;
 unsigned long flags;
 struct uhid_event *ev;

 switch (report_type) {
 case 129:
  rtype = UHID_FEATURE_REPORT;
  break;
 case 128:
  rtype = UHID_OUTPUT_REPORT;
  break;
 default:
  return -EINVAL;
 }

 if (count < 1 || count > UHID_DATA_MAX)
  return -EINVAL;

 ev = kzalloc(sizeof(*ev), GFP_KERNEL);
 if (!ev)
  return -ENOMEM;

 ev->type = UHID_OUTPUT;
 ev->u.output.size = count;
 ev->u.output.rtype = rtype;
 memcpy(ev->u.output.data, buf, count);

 spin_lock_irqsave(&uhid->qlock, flags);
 uhid_queue(uhid, ev);
 spin_unlock_irqrestore(&uhid->qlock, flags);

 return count;
}
