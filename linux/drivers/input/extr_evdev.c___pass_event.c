
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_event {scalar_t__ type; scalar_t__ code; scalar_t__ value; int input_event_usec; int input_event_sec; } ;
struct evdev_client {int head; int bufsize; int tail; int packet_head; int fasync; struct input_event* buffer; } ;


 scalar_t__ EV_SYN ;
 int POLL_IN ;
 int SIGIO ;
 scalar_t__ SYN_DROPPED ;
 scalar_t__ SYN_REPORT ;
 int kill_fasync (int *,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __pass_event(struct evdev_client *client,
    const struct input_event *event)
{
 client->buffer[client->head++] = *event;
 client->head &= client->bufsize - 1;

 if (unlikely(client->head == client->tail)) {




  client->tail = (client->head - 2) & (client->bufsize - 1);

  client->buffer[client->tail].input_event_sec =
      event->input_event_sec;
  client->buffer[client->tail].input_event_usec =
      event->input_event_usec;
  client->buffer[client->tail].type = EV_SYN;
  client->buffer[client->tail].code = SYN_DROPPED;
  client->buffer[client->tail].value = 0;

  client->packet_head = client->tail;
 }

 if (event->type == EV_SYN && event->code == SYN_REPORT) {
  client->packet_head = client->head;
  kill_fasync(&client->fasync, SIGIO, POLL_IN);
 }
}
