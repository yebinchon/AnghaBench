
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int lock; scalar_t__ powered; } ;
typedef int irqreturn_t ;


 int DRM_ERROR (char*,int) ;
 int IRQ_HANDLED ;
 int anx78xx_enable_interrupts (struct anx78xx*) ;
 int anx78xx_poweron (struct anx78xx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t anx78xx_hpd_threaded_handler(int irq, void *data)
{
 struct anx78xx *anx78xx = data;
 int err;

 if (anx78xx->powered)
  return IRQ_HANDLED;

 mutex_lock(&anx78xx->lock);


 anx78xx_poweron(anx78xx);

 err = anx78xx_enable_interrupts(anx78xx);
 if (err)
  DRM_ERROR("Failed to enable interrupts: %d\n", err);

 mutex_unlock(&anx78xx->lock);

 return IRQ_HANDLED;
}
