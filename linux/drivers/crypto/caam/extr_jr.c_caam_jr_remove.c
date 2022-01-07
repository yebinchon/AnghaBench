
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct caam_drv_private_jr {int list_node; int tfm_count; } ;
struct TYPE_2__ {int jr_alloc_lock; } ;


 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int caam_jr_shutdown (struct device*) ;
 int dev_err (struct device*,char*) ;
 struct caam_drv_private_jr* dev_get_drvdata (struct device*) ;
 TYPE_1__ driver_data ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unregister_algs () ;

__attribute__((used)) static int caam_jr_remove(struct platform_device *pdev)
{
 int ret;
 struct device *jrdev;
 struct caam_drv_private_jr *jrpriv;

 jrdev = &pdev->dev;
 jrpriv = dev_get_drvdata(jrdev);




 if (atomic_read(&jrpriv->tfm_count)) {
  dev_err(jrdev, "Device is busy\n");
  return -EBUSY;
 }


 unregister_algs();


 spin_lock(&driver_data.jr_alloc_lock);
 list_del(&jrpriv->list_node);
 spin_unlock(&driver_data.jr_alloc_lock);


 ret = caam_jr_shutdown(jrdev);
 if (ret)
  dev_err(jrdev, "Failed to shut down job ring\n");

 return ret;
}
