
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_event {int type; } ;
struct uhid_device {int qlock; } ;
typedef int __u32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct uhid_event* kzalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uhid_queue (struct uhid_device*,struct uhid_event*) ;

__attribute__((used)) static int uhid_queue_event(struct uhid_device *uhid, __u32 event)
{
 unsigned long flags;
 struct uhid_event *ev;

 ev = kzalloc(sizeof(*ev), GFP_KERNEL);
 if (!ev)
  return -ENOMEM;

 ev->type = event;

 spin_lock_irqsave(&uhid->qlock, flags);
 uhid_queue(uhid, ev);
 spin_unlock_irqrestore(&uhid->qlock, flags);

 return 0;
}
