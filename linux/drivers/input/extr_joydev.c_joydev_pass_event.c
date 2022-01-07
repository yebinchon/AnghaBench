
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct js_event {int dummy; } ;
struct joydev_client {size_t head; scalar_t__ startup; int tail; int fasync; int buffer_lock; struct js_event* buffer; struct joydev* joydev; } ;
struct joydev {scalar_t__ nabs; scalar_t__ nkey; } ;


 int JOYDEV_BUFFER_SIZE ;
 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void joydev_pass_event(struct joydev_client *client,
         struct js_event *event)
{
 struct joydev *joydev = client->joydev;




 spin_lock(&client->buffer_lock);

 client->buffer[client->head] = *event;

 if (client->startup == joydev->nabs + joydev->nkey) {
  client->head++;
  client->head &= JOYDEV_BUFFER_SIZE - 1;
  if (client->tail == client->head)
   client->startup = 0;
 }

 spin_unlock(&client->buffer_lock);

 kill_fasync(&client->fasync, SIGIO, POLL_IN);
}
