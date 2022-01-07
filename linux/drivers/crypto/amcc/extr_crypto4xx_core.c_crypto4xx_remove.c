
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct crypto4xx_core_device {int rng_lock; int dev; int tasklet; int irq; } ;


 int crypto4xx_stop_all (struct crypto4xx_core_device*) ;
 int crypto4xx_unregister_alg (int ) ;
 struct crypto4xx_core_device* dev_get_drvdata (struct device*) ;
 int free_irq (int ,struct device*) ;
 int irq_dispose_mapping (int ) ;
 int mutex_destroy (int *) ;
 int ppc4xx_trng_remove (struct crypto4xx_core_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int crypto4xx_remove(struct platform_device *ofdev)
{
 struct device *dev = &ofdev->dev;
 struct crypto4xx_core_device *core_dev = dev_get_drvdata(dev);

 ppc4xx_trng_remove(core_dev);

 free_irq(core_dev->irq, dev);
 irq_dispose_mapping(core_dev->irq);

 tasklet_kill(&core_dev->tasklet);

 crypto4xx_unregister_alg(core_dev->dev);
 mutex_destroy(&core_dev->rng_lock);

 crypto4xx_stop_all(core_dev);

 return 0;
}
