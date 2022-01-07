
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeti_ts {int running; int mutex; scalar_t__ attn_gpio; TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int eeti_ts_read (struct eeti_ts*) ;
 int enable_irq (int ) ;
 scalar_t__ gpiod_get_value_cansleep (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void eeti_ts_start(struct eeti_ts *eeti)
{
 mutex_lock(&eeti->mutex);

 eeti->running = 1;
 enable_irq(eeti->client->irq);






 if (eeti->attn_gpio && gpiod_get_value_cansleep(eeti->attn_gpio))
  eeti_ts_read(eeti);

 mutex_unlock(&eeti->mutex);
}
