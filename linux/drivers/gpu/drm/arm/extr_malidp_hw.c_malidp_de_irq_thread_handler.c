
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malidp_drm {int wq; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t malidp_de_irq_thread_handler(int irq, void *arg)
{
 struct drm_device *drm = arg;
 struct malidp_drm *malidp = drm->dev_private;

 wake_up(&malidp->wq);

 return IRQ_HANDLED;
}
