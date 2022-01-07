
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uhid_event {scalar_t__ type; } ;
struct uhid_device {scalar_t__ report_type; scalar_t__ report_id; int report_running; int qlock; int report_wait; int report_buf; } ;


 int memcpy (int *,struct uhid_event const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void uhid_report_wake_up(struct uhid_device *uhid, u32 id,
    const struct uhid_event *ev)
{
 unsigned long flags;

 spin_lock_irqsave(&uhid->qlock, flags);


 if (uhid->report_type != ev->type || uhid->report_id != id)
  goto unlock;
 if (!uhid->report_running)
  goto unlock;

 memcpy(&uhid->report_buf, ev, sizeof(*ev));
 uhid->report_running = 0;
 wake_up_interruptible(&uhid->report_wait);

unlock:
 spin_unlock_irqrestore(&uhid->qlock, flags);
}
