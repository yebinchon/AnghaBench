
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rotary_encoder {unsigned int dir; unsigned int last_stable; int access_mutex; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int rotary_encoder_get_state (struct rotary_encoder*) ;
 int rotary_encoder_report_event (struct rotary_encoder*) ;

__attribute__((used)) static irqreturn_t rotary_encoder_half_period_irq(int irq, void *dev_id)
{
 struct rotary_encoder *encoder = dev_id;
 unsigned int state;

 mutex_lock(&encoder->access_mutex);

 state = rotary_encoder_get_state(encoder);

 if (state & 1) {
  encoder->dir = ((encoder->last_stable - state + 1) % 4) - 1;
 } else {
  if (state != encoder->last_stable) {
   rotary_encoder_report_event(encoder);
   encoder->last_stable = state;
  }
 }

 mutex_unlock(&encoder->access_mutex);

 return IRQ_HANDLED;
}
