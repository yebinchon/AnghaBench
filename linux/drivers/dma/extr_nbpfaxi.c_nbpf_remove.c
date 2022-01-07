
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct nbpf_device {int clk; int dma_dev; int tasklet; int irq; struct nbpf_device* chan; TYPE_1__* config; int eirq; } ;
struct nbpf_channel {int clk; int dma_dev; int tasklet; int irq; struct nbpf_channel* chan; TYPE_1__* config; int eirq; } ;
struct TYPE_3__ {int num_channels; } ;


 int clk_disable_unprepare (int ) ;
 int devm_free_irq (TYPE_2__*,int ,struct nbpf_device*) ;
 int dma_async_device_unregister (int *) ;
 int of_dma_controller_free (int ) ;
 struct nbpf_device* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int nbpf_remove(struct platform_device *pdev)
{
 struct nbpf_device *nbpf = platform_get_drvdata(pdev);
 int i;

 devm_free_irq(&pdev->dev, nbpf->eirq, nbpf);

 for (i = 0; i < nbpf->config->num_channels; i++) {
  struct nbpf_channel *chan = nbpf->chan + i;

  devm_free_irq(&pdev->dev, chan->irq, chan);

  tasklet_kill(&chan->tasklet);
 }

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&nbpf->dma_dev);
 clk_disable_unprepare(nbpf->clk);

 return 0;
}
