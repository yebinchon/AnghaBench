
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {int bgpio_lock; } ;
struct grgpio_priv {TYPE_2__ gc; scalar_t__ domain; TYPE_1__* uirqs; } ;
struct TYPE_3__ {scalar_t__ refcnt; } ;


 int EBUSY ;
 int GRGPIO_MAX_NGPIO ;
 int gpiochip_remove (TYPE_2__*) ;
 int irq_domain_remove (scalar_t__) ;
 struct grgpio_priv* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int grgpio_remove(struct platform_device *ofdev)
{
 struct grgpio_priv *priv = platform_get_drvdata(ofdev);
 unsigned long flags;
 int i;
 int ret = 0;

 spin_lock_irqsave(&priv->gc.bgpio_lock, flags);

 if (priv->domain) {
  for (i = 0; i < GRGPIO_MAX_NGPIO; i++) {
   if (priv->uirqs[i].refcnt != 0) {
    ret = -EBUSY;
    goto out;
   }
  }
 }

 gpiochip_remove(&priv->gc);

 if (priv->domain)
  irq_domain_remove(priv->domain);

out:
 spin_unlock_irqrestore(&priv->gc.bgpio_lock, flags);

 return ret;
}
