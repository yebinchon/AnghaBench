
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ioatdma_device {struct ioatdma_chan** idx; } ;
struct ioatdma_chan {int timer; int prep_lock; int state; } ;


 int IOAT_CHAN_DOWN ;
 int IOAT_MAX_CHANS ;
 int del_timer_sync (int *) ;
 int ioat_disable_interrupts (struct ioatdma_device*) ;
 int ioat_reset_hw (struct ioatdma_chan*) ;
 struct ioatdma_device* pci_get_drvdata (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ioat_shutdown(struct pci_dev *pdev)
{
 struct ioatdma_device *ioat_dma = pci_get_drvdata(pdev);
 struct ioatdma_chan *ioat_chan;
 int i;

 if (!ioat_dma)
  return;

 for (i = 0; i < IOAT_MAX_CHANS; i++) {
  ioat_chan = ioat_dma->idx[i];
  if (!ioat_chan)
   continue;

  spin_lock_bh(&ioat_chan->prep_lock);
  set_bit(IOAT_CHAN_DOWN, &ioat_chan->state);
  spin_unlock_bh(&ioat_chan->prep_lock);






  del_timer_sync(&ioat_chan->timer);


  ioat_reset_hw(ioat_chan);
 }

 ioat_disable_interrupts(ioat_dma);
}
