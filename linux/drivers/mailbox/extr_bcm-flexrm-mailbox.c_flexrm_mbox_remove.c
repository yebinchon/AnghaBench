
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct flexrm_mbox {int bd_pool; int cmpl_pool; int root; } ;


 int debugfs_remove_recursive (int ) ;
 int dma_pool_destroy (int ) ;
 struct flexrm_mbox* platform_get_drvdata (struct platform_device*) ;
 int platform_msi_domain_free_irqs (struct device*) ;

__attribute__((used)) static int flexrm_mbox_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct flexrm_mbox *mbox = platform_get_drvdata(pdev);

 debugfs_remove_recursive(mbox->root);

 platform_msi_domain_free_irqs(dev);

 dma_pool_destroy(mbox->cmpl_pool);
 dma_pool_destroy(mbox->bd_pool);

 return 0;
}
