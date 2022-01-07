
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct sun6i_dma_dev {int task; int irq; TYPE_1__ slave; int tasklet_shutdown; scalar_t__ base; } ;


 scalar_t__ DMA_IRQ_EN (int) ;
 int atomic_inc (int *) ;
 int devm_free_irq (int ,int ,struct sun6i_dma_dev*) ;
 int tasklet_kill (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void sun6i_kill_tasklet(struct sun6i_dma_dev *sdev)
{

 writel(0, sdev->base + DMA_IRQ_EN(0));
 writel(0, sdev->base + DMA_IRQ_EN(1));


 atomic_inc(&sdev->tasklet_shutdown);


 devm_free_irq(sdev->slave.dev, sdev->irq, sdev);


 tasklet_kill(&sdev->task);
}
