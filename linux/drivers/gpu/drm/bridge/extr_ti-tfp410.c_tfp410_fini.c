
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfp410 {scalar_t__ hpd_irq; scalar_t__ hpd; scalar_t__ ddc; int bridge; int hpd_work; } ;
struct device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct tfp410* dev_get_drvdata (struct device*) ;
 int drm_bridge_remove (int *) ;
 int gpiod_put (scalar_t__) ;
 int i2c_put_adapter (scalar_t__) ;

__attribute__((used)) static int tfp410_fini(struct device *dev)
{
 struct tfp410 *dvi = dev_get_drvdata(dev);

 if (dvi->hpd_irq >= 0)
  cancel_delayed_work_sync(&dvi->hpd_work);

 drm_bridge_remove(&dvi->bridge);

 if (dvi->ddc)
  i2c_put_adapter(dvi->ddc);
 if (dvi->hpd)
  gpiod_put(dvi->hpd);

 return 0;
}
