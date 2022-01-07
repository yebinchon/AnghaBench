
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_event {int dummy; } ;
struct uhid_device {int head; int tail; int hid; int waitq; struct uhid_event** outq; } ;
typedef int __u8 ;


 int UHID_BUFSIZE ;
 int hid_warn (int ,char*) ;
 int kfree (struct uhid_event*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void uhid_queue(struct uhid_device *uhid, struct uhid_event *ev)
{
 __u8 newhead;

 newhead = (uhid->head + 1) % UHID_BUFSIZE;

 if (newhead != uhid->tail) {
  uhid->outq[uhid->head] = ev;
  uhid->head = newhead;
  wake_up_interruptible(&uhid->waitq);
 } else {
  hid_warn(uhid->hid, "Output queue is full\n");
  kfree(ev);
 }
}
