
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_fdma_dev {int slim_rproc; int irq; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int devm_free_irq (TYPE_1__*,int ,struct st_fdma_dev*) ;
 int of_dma_controller_free (int ) ;
 struct st_fdma_dev* platform_get_drvdata (struct platform_device*) ;
 int st_slim_rproc_put (int ) ;

__attribute__((used)) static int st_fdma_remove(struct platform_device *pdev)
{
 struct st_fdma_dev *fdev = platform_get_drvdata(pdev);

 devm_free_irq(&pdev->dev, fdev->irq, fdev);
 st_slim_rproc_put(fdev->slim_rproc);
 of_dma_controller_free(pdev->dev.of_node);

 return 0;
}
