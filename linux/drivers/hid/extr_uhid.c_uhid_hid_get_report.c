
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct uhid_get_report_reply_req {int data; scalar_t__ size; scalar_t__ err; } ;
struct TYPE_5__ {unsigned char rnum; int id; int rtype; } ;
struct TYPE_6__ {TYPE_1__ get_report; } ;
struct uhid_event {TYPE_2__ u; int type; } ;
struct TYPE_7__ {struct uhid_get_report_reply_req get_report_reply; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct uhid_device {int report_lock; TYPE_4__ report_buf; int running; } ;
struct hid_device {struct uhid_device* driver_data; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ UHID_DATA_MAX ;
 int UHID_GET_REPORT ;
 int __uhid_report_queue_and_wait (struct uhid_device*,struct uhid_event*,int *) ;
 int kfree (struct uhid_event*) ;
 struct uhid_event* kzalloc (int,int ) ;
 int memcpy (int *,int ,int) ;
 int min3 (size_t,size_t,size_t) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int uhid_hid_get_report(struct hid_device *hid, unsigned char rnum,
          u8 *buf, size_t count, u8 rtype)
{
 struct uhid_device *uhid = hid->driver_data;
 struct uhid_get_report_reply_req *req;
 struct uhid_event *ev;
 int ret;

 if (!uhid->running)
  return -EIO;

 ev = kzalloc(sizeof(*ev), GFP_KERNEL);
 if (!ev)
  return -ENOMEM;

 ev->type = UHID_GET_REPORT;
 ev->u.get_report.rnum = rnum;
 ev->u.get_report.rtype = rtype;

 ret = mutex_lock_interruptible(&uhid->report_lock);
 if (ret) {
  kfree(ev);
  return ret;
 }


 ret = __uhid_report_queue_and_wait(uhid, ev, &ev->u.get_report.id);
 if (ret)
  goto unlock;

 req = &uhid->report_buf.u.get_report_reply;
 if (req->err) {
  ret = -EIO;
 } else {
  ret = min3(count, (size_t)req->size, (size_t)UHID_DATA_MAX);
  memcpy(buf, req->data, ret);
 }

unlock:
 mutex_unlock(&uhid->report_lock);
 return ret;
}
