
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rackmeter_dma {int dummy; } ;
struct rackmeter {scalar_t__ ubuf; int dma_buf_p; int dma_buf_v; int i2s_regs; int dma_regs; int irq; } ;
struct TYPE_3__ {int dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;
struct TYPE_4__ {int dev; } ;


 int DBDMA_DO_RESET (int ) ;
 struct rackmeter* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct rackmeter*) ;
 int free_page (unsigned long) ;
 int iounmap (int ) ;
 int kfree (struct rackmeter*) ;
 TYPE_2__* macio_get_pci_dev (struct macio_dev*) ;
 int macio_release_resources (struct macio_dev*) ;
 int rackmeter_stop_cpu_sniffer (struct rackmeter*) ;

__attribute__((used)) static int rackmeter_remove(struct macio_dev* mdev)
{
 struct rackmeter *rm = dev_get_drvdata(&mdev->ofdev.dev);


 rackmeter_stop_cpu_sniffer(rm);


 dev_set_drvdata(&mdev->ofdev.dev, ((void*)0));


 DBDMA_DO_RESET(rm->dma_regs);


 free_irq(rm->irq, rm);


 iounmap(rm->dma_regs);
 iounmap(rm->i2s_regs);


 dma_free_coherent(&macio_get_pci_dev(mdev)->dev,
     sizeof(struct rackmeter_dma),
     rm->dma_buf_v, rm->dma_buf_p);


 free_page((unsigned long)rm->ubuf);







 kfree(rm);

 return 0;
}
