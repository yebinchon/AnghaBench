
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {unsigned char rnum; size_t size; int id; int data; int rtype; } ;
struct TYPE_7__ {TYPE_1__ set_report; } ;
struct uhid_event {TYPE_2__ u; int type; } ;
struct TYPE_8__ {scalar_t__ err; } ;
struct TYPE_9__ {TYPE_3__ set_report_reply; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct uhid_device {int report_lock; TYPE_5__ report_buf; int running; } ;
struct hid_device {struct uhid_device* driver_data; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t UHID_DATA_MAX ;
 int UHID_SET_REPORT ;
 int __uhid_report_queue_and_wait (struct uhid_device*,struct uhid_event*,int *) ;
 int kfree (struct uhid_event*) ;
 struct uhid_event* kzalloc (int,int ) ;
 int memcpy (int ,int const*,size_t) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int uhid_hid_set_report(struct hid_device *hid, unsigned char rnum,
          const u8 *buf, size_t count, u8 rtype)
{
 struct uhid_device *uhid = hid->driver_data;
 struct uhid_event *ev;
 int ret;

 if (!uhid->running || count > UHID_DATA_MAX)
  return -EIO;

 ev = kzalloc(sizeof(*ev), GFP_KERNEL);
 if (!ev)
  return -ENOMEM;

 ev->type = UHID_SET_REPORT;
 ev->u.set_report.rnum = rnum;
 ev->u.set_report.rtype = rtype;
 ev->u.set_report.size = count;
 memcpy(ev->u.set_report.data, buf, count);

 ret = mutex_lock_interruptible(&uhid->report_lock);
 if (ret) {
  kfree(ev);
  return ret;
 }


 ret = __uhid_report_queue_and_wait(uhid, ev, &ev->u.set_report.id);
 if (ret)
  goto unlock;

 if (uhid->report_buf.u.set_report_reply.err)
  ret = -EIO;
 else
  ret = count;

unlock:
 mutex_unlock(&uhid->report_lock);
 return ret;
}
