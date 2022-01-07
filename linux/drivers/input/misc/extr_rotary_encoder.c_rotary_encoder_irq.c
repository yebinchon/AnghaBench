
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rotary_encoder {int armed; int dir; int access_mutex; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int rotary_encoder_get_state (struct rotary_encoder*) ;
 int rotary_encoder_report_event (struct rotary_encoder*) ;

__attribute__((used)) static irqreturn_t rotary_encoder_irq(int irq, void *dev_id)
{
 struct rotary_encoder *encoder = dev_id;
 unsigned int state;

 mutex_lock(&encoder->access_mutex);

 state = rotary_encoder_get_state(encoder);

 switch (state) {
 case 0x0:
  if (encoder->armed) {
   rotary_encoder_report_event(encoder);
   encoder->armed = 0;
  }
  break;

 case 0x1:
 case 0x3:
  if (encoder->armed)
   encoder->dir = 2 - state;
  break;

 case 0x2:
  encoder->armed = 1;
  break;
 }

 mutex_unlock(&encoder->access_mutex);

 return IRQ_HANDLED;
}
