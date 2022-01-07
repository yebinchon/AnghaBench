
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct sii902x {TYPE_1__ bridge; int mutex; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int SII902X_HOTPLUG_EVENT ;
 int SII902X_INT_STATUS ;
 int drm_helper_hpd_irq_event (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t sii902x_interrupt(int irq, void *data)
{
 struct sii902x *sii902x = data;
 unsigned int status = 0;

 mutex_lock(&sii902x->mutex);

 regmap_read(sii902x->regmap, SII902X_INT_STATUS, &status);
 regmap_write(sii902x->regmap, SII902X_INT_STATUS, status);

 mutex_unlock(&sii902x->mutex);

 if ((status & SII902X_HOTPLUG_EVENT) && sii902x->bridge.dev)
  drm_helper_hpd_irq_event(sii902x->bridge.dev);

 return IRQ_HANDLED;
}
