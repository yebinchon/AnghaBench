
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_event {int dummy; } ;
struct evdev_client {int packet_head; int tail; int bufsize; int buffer_lock; struct input_event* buffer; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int evdev_fetch_next_event(struct evdev_client *client,
      struct input_event *event)
{
 int have_event;

 spin_lock_irq(&client->buffer_lock);

 have_event = client->packet_head != client->tail;
 if (have_event) {
  *event = client->buffer[client->tail++];
  client->tail &= client->bufsize - 1;
 }

 spin_unlock_irq(&client->buffer_lock);

 return have_event;
}
