
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pdc_state {int ring_pool; int rx_buf_pool; int rx_tasklet; } ;


 int dma_pool_destroy (int ) ;
 int pdc_free_debugfs () ;
 int pdc_hw_disable (struct pdc_state*) ;
 struct pdc_state* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int pdc_remove(struct platform_device *pdev)
{
 struct pdc_state *pdcs = platform_get_drvdata(pdev);

 pdc_free_debugfs();

 tasklet_kill(&pdcs->rx_tasklet);

 pdc_hw_disable(pdcs);

 dma_pool_destroy(pdcs->rx_buf_pool);
 dma_pool_destroy(pdcs->ring_pool);
 return 0;
}
