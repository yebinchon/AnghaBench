
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dummy; } ;
struct TYPE_2__ {unsigned char ibuf; int state; int* channel; size_t offset; } ;
struct fsia6b {TYPE_1__ packet; int dev; } ;
typedef int irqreturn_t ;


 int BTN_0 ;

 int IBUS_SERVO_COUNT ;
 int IRQ_HANDLED ;


 int * fsia6b_axes ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 struct fsia6b* serio_get_drvdata (struct serio*) ;
 int * switch_config ;

__attribute__((used)) static irqreturn_t fsia6b_serio_irq(struct serio *serio,
        unsigned char data, unsigned int flags)
{
 struct fsia6b *fsia6b = serio_get_drvdata(serio);
 int i;
 int sw_state;
 int sw_id = BTN_0;

 fsia6b->packet.ibuf = (data << 8) | ((fsia6b->packet.ibuf >> 8) & 0xFF);

 switch (fsia6b->packet.state) {
 case 128:
  if (fsia6b->packet.ibuf == 0x4020)
   fsia6b->packet.state = 130;
  break;

 case 130:
  fsia6b->packet.state = 129;
  break;

 case 129:
  fsia6b->packet.channel[fsia6b->packet.offset] =
    fsia6b->packet.ibuf;
  fsia6b->packet.offset++;

  if (fsia6b->packet.offset == IBUS_SERVO_COUNT) {
   fsia6b->packet.offset = 0;
   fsia6b->packet.state = 128;
   for (i = 0; i < IBUS_SERVO_COUNT; ++i) {
    input_report_abs(fsia6b->dev, fsia6b_axes[i],
       fsia6b->packet.channel[i]);

    sw_state = 0;
    if (fsia6b->packet.channel[i] > 1900)
     sw_state = 1;
    else if (fsia6b->packet.channel[i] < 1100)
     sw_state = 2;

    switch (switch_config[i]) {
    case '3':
     input_report_key(fsia6b->dev,
        sw_id++,
        sw_state == 0);

    case '2':
     input_report_key(fsia6b->dev,
        sw_id++,
        sw_state == 1);

    case '1':
     input_report_key(fsia6b->dev,
        sw_id++,
        sw_state == 2);
    }
   }
   input_sync(fsia6b->dev);
  } else {
   fsia6b->packet.state = 130;
  }
  break;
 }

 return IRQ_HANDLED;
}
