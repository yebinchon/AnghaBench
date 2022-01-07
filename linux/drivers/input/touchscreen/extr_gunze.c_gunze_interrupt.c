
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct gunze {scalar_t__ idx; unsigned char* data; } ;
typedef int irqreturn_t ;


 scalar_t__ GUNZE_MAX_LENGTH ;
 int IRQ_HANDLED ;
 int gunze_process_packet (struct gunze*) ;
 struct gunze* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t gunze_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct gunze *gunze = serio_get_drvdata(serio);

 if (data == '\r') {
  gunze_process_packet(gunze);
  gunze->idx = 0;
 } else {
  if (gunze->idx < GUNZE_MAX_LENGTH)
   gunze->data[gunze->idx++] = data;
 }
 return IRQ_HANDLED;
}
