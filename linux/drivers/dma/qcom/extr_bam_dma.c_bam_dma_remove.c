
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct bam_device {size_t num_channels; int bamclk; int task; TYPE_2__* channels; int dev; int irq; int common; } ;
struct TYPE_4__ {int task; int chan; } ;
struct TYPE_5__ {int fifo_phys; int fifo_virt; TYPE_1__ vc; } ;


 int BAM_DESC_FIFO_SIZE ;
 int BAM_IRQ_SRCS_MSK_EE ;
 int bam_addr (struct bam_device*,int ,int ) ;
 int bam_dma_terminate_all (int *) ;
 int clk_disable_unprepare (int ) ;
 int devm_free_irq (int ,int ,struct bam_device*) ;
 int dma_async_device_unregister (int *) ;
 int dma_free_wc (int ,int ,int ,int ) ;
 int of_dma_controller_free (int ) ;
 struct bam_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_force_suspend (TYPE_3__*) ;
 int tasklet_kill (int *) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int bam_dma_remove(struct platform_device *pdev)
{
 struct bam_device *bdev = platform_get_drvdata(pdev);
 u32 i;

 pm_runtime_force_suspend(&pdev->dev);

 of_dma_controller_free(pdev->dev.of_node);
 dma_async_device_unregister(&bdev->common);


 writel_relaxed(0, bam_addr(bdev, 0, BAM_IRQ_SRCS_MSK_EE));

 devm_free_irq(bdev->dev, bdev->irq, bdev);

 for (i = 0; i < bdev->num_channels; i++) {
  bam_dma_terminate_all(&bdev->channels[i].vc.chan);
  tasklet_kill(&bdev->channels[i].vc.task);

  if (!bdev->channels[i].fifo_virt)
   continue;

  dma_free_wc(bdev->dev, BAM_DESC_FIFO_SIZE,
       bdev->channels[i].fifo_virt,
       bdev->channels[i].fifo_phys);
 }

 tasklet_kill(&bdev->task);

 clk_disable_unprepare(bdev->bamclk);

 return 0;
}
