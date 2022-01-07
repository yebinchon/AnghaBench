
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeti_ts {int mutex; scalar_t__ attn_gpio; scalar_t__ running; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int eeti_ts_read (struct eeti_ts*) ;
 int gpiod_get_value_cansleep (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t eeti_ts_isr(int irq, void *dev_id)
{
 struct eeti_ts *eeti = dev_id;
 int error;

 mutex_lock(&eeti->mutex);

 do {






  if (eeti->attn_gpio &&
      !gpiod_get_value_cansleep(eeti->attn_gpio)) {
   break;
  }

  error = eeti_ts_read(eeti);
  if (error)
   break;

 } while (eeti->running && eeti->attn_gpio);

 mutex_unlock(&eeti->mutex);
 return IRQ_HANDLED;
}
