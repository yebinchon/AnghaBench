
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct js_event {int dummy; } ;
struct joydev_client {int head; int tail; int buffer_lock; struct js_event* buffer; } ;


 int JOYDEV_BUFFER_SIZE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int joydev_fetch_next_event(struct joydev_client *client,
       struct js_event *event)
{
 int have_event;

 spin_lock_irq(&client->buffer_lock);

 have_event = client->head != client->tail;
 if (have_event) {
  *event = client->buffer[client->tail++];
  client->tail &= JOYDEV_BUFFER_SIZE - 1;
 }

 spin_unlock_irq(&client->buffer_lock);

 return have_event;
}
