
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct msix_entry {int vector; } ;
struct ioatdma_device {int irq_mode; struct msix_entry* msix_entries; struct pci_dev* pdev; } ;
struct ioatdma_chan {int dma_chan; int cleanup_task; int timer; int state; struct ioatdma_device* ioat_dma; } ;





 int IOAT_RUN ;
 int chan_num (struct ioatdma_chan*) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int ioat_cleanup_event (unsigned long) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

void ioat_stop(struct ioatdma_chan *ioat_chan)
{
 struct ioatdma_device *ioat_dma = ioat_chan->ioat_dma;
 struct pci_dev *pdev = ioat_dma->pdev;
 int chan_id = chan_num(ioat_chan);
 struct msix_entry *msix;




 clear_bit(IOAT_RUN, &ioat_chan->state);


 switch (ioat_dma->irq_mode) {
 case 128:
  msix = &ioat_dma->msix_entries[chan_id];
  synchronize_irq(msix->vector);
  break;
 case 129:
 case 130:
  synchronize_irq(pdev->irq);
  break;
 default:
  break;
 }


 del_timer_sync(&ioat_chan->timer);


 tasklet_kill(&ioat_chan->cleanup_task);


 ioat_cleanup_event((unsigned long)&ioat_chan->dma_chan);
}
