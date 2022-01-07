
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int core; int iface; int bus; int dma; int done_tasklet; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct qce_device* platform_get_drvdata (struct platform_device*) ;
 int qce_dma_release (int *) ;
 int qce_unregister_algs (struct qce_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int qce_crypto_remove(struct platform_device *pdev)
{
 struct qce_device *qce = platform_get_drvdata(pdev);

 tasklet_kill(&qce->done_tasklet);
 qce_unregister_algs(qce);
 qce_dma_release(&qce->dma);
 clk_disable_unprepare(qce->bus);
 clk_disable_unprepare(qce->iface);
 clk_disable_unprepare(qce->core);
 return 0;
}
