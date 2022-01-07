
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mc13xxx_buttons_platform_data {int b3on_flags; int b2on_flags; int b1on_flags; } ;
struct mc13783_pwrb {int pwr; int mc13783; } ;


 int MC13783_BUTTON_ENABLE ;
 int MC13783_IRQ_ONOFD1 ;
 int MC13783_IRQ_ONOFD2 ;
 int MC13783_IRQ_ONOFD3 ;
 struct mc13xxx_buttons_platform_data* dev_get_platdata (int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct mc13783_pwrb*) ;
 int mc13xxx_irq_free (int ,int ,struct mc13783_pwrb*) ;
 int mc13xxx_lock (int ) ;
 int mc13xxx_unlock (int ) ;
 struct mc13783_pwrb* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mc13783_pwrbutton_remove(struct platform_device *pdev)
{
 struct mc13783_pwrb *priv = platform_get_drvdata(pdev);
 const struct mc13xxx_buttons_platform_data *pdata;

 pdata = dev_get_platdata(&pdev->dev);

 mc13xxx_lock(priv->mc13783);

 if (pdata->b3on_flags & MC13783_BUTTON_ENABLE)
  mc13xxx_irq_free(priv->mc13783, MC13783_IRQ_ONOFD3, priv);
 if (pdata->b2on_flags & MC13783_BUTTON_ENABLE)
  mc13xxx_irq_free(priv->mc13783, MC13783_IRQ_ONOFD2, priv);
 if (pdata->b1on_flags & MC13783_BUTTON_ENABLE)
  mc13xxx_irq_free(priv->mc13783, MC13783_IRQ_ONOFD1, priv);

 mc13xxx_unlock(priv->mc13783);

 input_unregister_device(priv->pwr);
 kfree(priv);

 return 0;
}
