
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_event {unsigned int type; scalar_t__ code; } ;
struct evdev_client {int bufsize; unsigned int tail; unsigned int packet_head; unsigned int head; struct input_event* buffer; } ;


 int BUG_ON (int) ;
 unsigned int EV_SYN ;
 scalar_t__ SYN_REPORT ;

__attribute__((used)) static void __evdev_flush_queue(struct evdev_client *client, unsigned int type)
{
 unsigned int i, head, num;
 unsigned int mask = client->bufsize - 1;
 bool is_report;
 struct input_event *ev;

 BUG_ON(type == EV_SYN);

 head = client->tail;
 client->packet_head = client->tail;


 num = 1;

 for (i = client->tail; i != client->head; i = (i + 1) & mask) {
  ev = &client->buffer[i];
  is_report = ev->type == EV_SYN && ev->code == SYN_REPORT;

  if (ev->type == type) {

   continue;
  } else if (is_report && !num) {

   continue;
  } else if (head != i) {

   client->buffer[head] = *ev;
  }

  num++;
  head = (head + 1) & mask;

  if (is_report) {
   num = 0;
   client->packet_head = head;
  }
 }

 client->head = head;
}
