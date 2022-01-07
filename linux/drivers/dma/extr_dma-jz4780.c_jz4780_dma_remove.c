
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct jz4780_dma_dev {TYPE_4__* chan; TYPE_2__* soc_data; int irq; } ;
struct TYPE_7__ {int task; } ;
struct TYPE_8__ {TYPE_3__ vchan; } ;
struct TYPE_6__ {int nb_channels; } ;


 int free_irq (int ,struct jz4780_dma_dev*) ;
 int of_dma_controller_free (int ) ;
 struct jz4780_dma_dev* platform_get_drvdata (struct platform_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int jz4780_dma_remove(struct platform_device *pdev)
{
 struct jz4780_dma_dev *jzdma = platform_get_drvdata(pdev);
 int i;

 of_dma_controller_free(pdev->dev.of_node);

 free_irq(jzdma->irq, jzdma);

 for (i = 0; i < jzdma->soc_data->nb_channels; i++)
  tasklet_kill(&jzdma->chan[i].vchan.task);

 return 0;
}
