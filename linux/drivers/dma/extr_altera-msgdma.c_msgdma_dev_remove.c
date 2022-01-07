
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_node; } ;
struct msgdma_device {TYPE_1__ dmachan; int irq_tasklet; int irq; int dev; } ;


 int devm_free_irq (int ,int ,struct msgdma_device*) ;
 int list_del (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void msgdma_dev_remove(struct msgdma_device *mdev)
{
 if (!mdev)
  return;

 devm_free_irq(mdev->dev, mdev->irq, mdev);
 tasklet_kill(&mdev->irq_tasklet);
 list_del(&mdev->dmachan.device_node);
}
