
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_client {int buffer_lock; } ;


 int __evdev_queue_syn_dropped (struct evdev_client*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void evdev_queue_syn_dropped(struct evdev_client *client)
{
 unsigned long flags;

 spin_lock_irqsave(&client->buffer_lock, flags);
 __evdev_queue_syn_dropped(client);
 spin_unlock_irqrestore(&client->buffer_lock, flags);
}
