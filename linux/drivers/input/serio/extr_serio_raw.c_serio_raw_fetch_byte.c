
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw {size_t head; size_t tail; char* queue; int serio; } ;


 int SERIO_RAW_QUEUE_LEN ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;

__attribute__((used)) static bool serio_raw_fetch_byte(struct serio_raw *serio_raw, char *c)
{
 bool empty;

 serio_pause_rx(serio_raw->serio);

 empty = serio_raw->head == serio_raw->tail;
 if (!empty) {
  *c = serio_raw->queue[serio_raw->tail];
  serio_raw->tail = (serio_raw->tail + 1) % SERIO_RAW_QUEUE_LEN;
 }

 serio_continue_rx(serio_raw->serio);

 return !empty;
}
