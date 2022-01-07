
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct pm {unsigned char* data; size_t idx; int (* parse_packet ) (struct pm*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct pm* serio_get_drvdata (struct serio*) ;
 int stub1 (struct pm*) ;

__attribute__((used)) static irqreturn_t pm_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct pm *pm = serio_get_drvdata(serio);

 pm->data[pm->idx] = data;

 pm->parse_packet(pm);

 return IRQ_HANDLED;
}
