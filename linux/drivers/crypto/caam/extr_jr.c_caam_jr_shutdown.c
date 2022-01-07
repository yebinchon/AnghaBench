
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct caam_drv_private_jr {int irqtask; } ;


 int caam_reset_hw_jr (struct device*) ;
 struct caam_drv_private_jr* dev_get_drvdata (struct device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int caam_jr_shutdown(struct device *dev)
{
 struct caam_drv_private_jr *jrp = dev_get_drvdata(dev);
 int ret;

 ret = caam_reset_hw_jr(dev);

 tasklet_kill(&jrp->irqtask);

 return ret;
}
