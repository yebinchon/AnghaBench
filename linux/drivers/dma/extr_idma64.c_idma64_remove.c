
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct idma64_chip {int irq; int dev; struct idma64* idma64; } ;
struct TYPE_3__ {int task; } ;
struct idma64_chan {TYPE_1__ vchan; } ;
struct TYPE_4__ {unsigned short chancnt; } ;
struct idma64 {struct idma64_chan* chan; TYPE_2__ dma; } ;


 int devm_free_irq (int ,int ,struct idma64*) ;
 int dma_async_device_unregister (TYPE_2__*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int idma64_remove(struct idma64_chip *chip)
{
 struct idma64 *idma64 = chip->idma64;
 unsigned short i;

 dma_async_device_unregister(&idma64->dma);





 devm_free_irq(chip->dev, chip->irq, idma64);

 for (i = 0; i < idma64->dma.chancnt; i++) {
  struct idma64_chan *idma64c = &idma64->chan[i];

  tasklet_kill(&idma64c->vchan.task);
 }

 return 0;
}
