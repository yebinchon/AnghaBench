
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_device {int dummy; } ;
struct TYPE_2__ {struct dma_device dma_dev; } ;
struct sh_dmae_device {TYPE_1__ shdma_dev; int node; } ;
struct platform_device {int dev; } ;


 int dma_async_device_unregister (struct dma_device*) ;
 int list_del_rcu (int *) ;
 struct sh_dmae_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int sh_dmae_chan_remove (struct sh_dmae_device*) ;
 int sh_dmae_lock ;
 int shdma_cleanup (TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static int sh_dmae_remove(struct platform_device *pdev)
{
 struct sh_dmae_device *shdev = platform_get_drvdata(pdev);
 struct dma_device *dma_dev = &shdev->shdma_dev.dma_dev;

 dma_async_device_unregister(dma_dev);

 spin_lock_irq(&sh_dmae_lock);
 list_del_rcu(&shdev->node);
 spin_unlock_irq(&sh_dmae_lock);

 pm_runtime_disable(&pdev->dev);

 sh_dmae_chan_remove(shdev);
 shdma_cleanup(&shdev->shdma_dev);

 synchronize_rcu();

 return 0;
}
