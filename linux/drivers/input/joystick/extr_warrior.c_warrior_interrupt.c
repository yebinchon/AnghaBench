
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warrior {scalar_t__ idx; scalar_t__ len; unsigned char* data; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct warrior* serio_get_drvdata (struct serio*) ;
 scalar_t__* warrior_lengths ;
 int warrior_process_packet (struct warrior*) ;

__attribute__((used)) static irqreturn_t warrior_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct warrior *warrior = serio_get_drvdata(serio);

 if (data & 0x80) {
  if (warrior->idx) warrior_process_packet(warrior);
  warrior->idx = 0;
  warrior->len = warrior_lengths[(data >> 4) & 7];
 }

 if (warrior->idx < warrior->len)
  warrior->data[warrior->idx++] = data;

 if (warrior->idx == warrior->len) {
  if (warrior->idx) warrior_process_packet(warrior);
  warrior->idx = 0;
  warrior->len = 0;
 }
 return IRQ_HANDLED;
}
