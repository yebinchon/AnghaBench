
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t head; int tail; int lock; int worker; TYPE_1__* outq; } ;
struct wiimote_data {TYPE_2__ queue; int hdev; } ;
typedef void* __u8 ;
struct TYPE_3__ {size_t size; int data; } ;


 size_t HID_MAX_BUFFER_SIZE ;
 int WIIMOTE_BUFSIZE ;
 int hid_warn (int ,char*) ;
 int memcpy (int ,void* const*,size_t) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiimote_cmd_abort (struct wiimote_data*) ;

__attribute__((used)) static void wiimote_queue(struct wiimote_data *wdata, const __u8 *buffer,
        size_t count)
{
 unsigned long flags;
 __u8 newhead;

 if (count > HID_MAX_BUFFER_SIZE) {
  hid_warn(wdata->hdev, "Sending too large output report\n");

  spin_lock_irqsave(&wdata->queue.lock, flags);
  goto out_error;
 }
 spin_lock_irqsave(&wdata->queue.lock, flags);

 memcpy(wdata->queue.outq[wdata->queue.head].data, buffer, count);
 wdata->queue.outq[wdata->queue.head].size = count;
 newhead = (wdata->queue.head + 1) % WIIMOTE_BUFSIZE;

 if (wdata->queue.head == wdata->queue.tail) {
  wdata->queue.head = newhead;
  schedule_work(&wdata->queue.worker);
 } else if (newhead != wdata->queue.tail) {
  wdata->queue.head = newhead;
 } else {
  hid_warn(wdata->hdev, "Output queue is full");
  goto out_error;
 }

 goto out_unlock;

out_error:
 wiimote_cmd_abort(wdata);
out_unlock:
 spin_unlock_irqrestore(&wdata->queue.lock, flags);
}
