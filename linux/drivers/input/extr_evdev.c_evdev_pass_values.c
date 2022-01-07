
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct input_value {scalar_t__ type; scalar_t__ code; int value; } ;
struct input_event {int input_event_usec; scalar_t__ type; scalar_t__ code; int value; int input_event_sec; } ;
struct evdev_client {size_t clk_type; scalar_t__ packet_head; scalar_t__ head; int buffer_lock; scalar_t__ revoked; struct evdev* evdev; } ;
struct evdev {int wait; } ;
typedef int ktime_t ;


 scalar_t__ EV_SYN ;
 int NSEC_PER_USEC ;
 scalar_t__ SYN_REPORT ;
 scalar_t__ __evdev_is_filtered (struct evdev_client*,scalar_t__,scalar_t__) ;
 int __pass_event (struct evdev_client*,struct input_event*) ;
 struct timespec64 ktime_to_timespec64 (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void evdev_pass_values(struct evdev_client *client,
   const struct input_value *vals, unsigned int count,
   ktime_t *ev_time)
{
 struct evdev *evdev = client->evdev;
 const struct input_value *v;
 struct input_event event;
 struct timespec64 ts;
 bool wakeup = 0;

 if (client->revoked)
  return;

 ts = ktime_to_timespec64(ev_time[client->clk_type]);
 event.input_event_sec = ts.tv_sec;
 event.input_event_usec = ts.tv_nsec / NSEC_PER_USEC;


 spin_lock(&client->buffer_lock);

 for (v = vals; v != vals + count; v++) {
  if (__evdev_is_filtered(client, v->type, v->code))
   continue;

  if (v->type == EV_SYN && v->code == SYN_REPORT) {

   if (client->packet_head == client->head)
    continue;

   wakeup = 1;
  }

  event.type = v->type;
  event.code = v->code;
  event.value = v->value;
  __pass_event(client, &event);
 }

 spin_unlock(&client->buffer_lock);

 if (wakeup)
  wake_up_interruptible(&evdev->wait);
}
