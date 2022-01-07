
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct elo {int id; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int elo_process_data_10 (struct elo*,unsigned char) ;
 int elo_process_data_3 (struct elo*,unsigned char) ;
 int elo_process_data_6 (struct elo*,unsigned char) ;
 struct elo* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t elo_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct elo *elo = serio_get_drvdata(serio);

 switch (elo->id) {
 case 0:
  elo_process_data_10(elo, data);
  break;

 case 1:
 case 2:
  elo_process_data_6(elo, data);
  break;

 case 3:
  elo_process_data_3(elo, data);
  break;
 }

 return IRQ_HANDLED;
}
