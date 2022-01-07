
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sermouse {scalar_t__ type; scalar_t__ last; scalar_t__ count; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;


 int HZ ;
 int IRQ_HANDLED ;
 scalar_t__ SERIO_SUN ;
 scalar_t__ jiffies ;
 struct sermouse* serio_get_drvdata (struct serio*) ;
 int sermouse_process_ms (struct sermouse*,unsigned char) ;
 int sermouse_process_msc (struct sermouse*,unsigned char) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static irqreturn_t sermouse_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct sermouse *sermouse = serio_get_drvdata(serio);

 if (time_after(jiffies, sermouse->last + HZ/10))
  sermouse->count = 0;

 sermouse->last = jiffies;

 if (sermouse->type > SERIO_SUN)
  sermouse_process_ms(sermouse, data);
 else
  sermouse_process_msc(sermouse, data);

 return IRQ_HANDLED;
}
