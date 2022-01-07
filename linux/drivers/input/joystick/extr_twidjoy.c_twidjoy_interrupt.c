
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twidjoy {scalar_t__ idx; unsigned char* data; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TWIDJOY_MAX_LENGTH ;
 struct twidjoy* serio_get_drvdata (struct serio*) ;
 int twidjoy_process_packet (struct twidjoy*) ;

__attribute__((used)) static irqreturn_t twidjoy_interrupt(struct serio *serio, unsigned char data, unsigned int flags)
{
 struct twidjoy *twidjoy = serio_get_drvdata(serio);





 if ((data & 0x80) == 0)
  twidjoy->idx = 0;
 else if (twidjoy->idx == 0)
  return IRQ_HANDLED;

 if (twidjoy->idx < TWIDJOY_MAX_LENGTH)
  twidjoy->data[twidjoy->idx++] = data;

 if (twidjoy->idx == TWIDJOY_MAX_LENGTH) {
  twidjoy_process_packet(twidjoy);
  twidjoy->idx = 0;
 }

 return IRQ_HANDLED;
}
