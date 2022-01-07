
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hifn_dma {int dummy; } ;
struct hifn_device {scalar_t__* bar; int desc_dma; int desc_virt; int tasklet; int irq; int work; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (int ,struct hifn_device*) ;
 int hifn_flush (struct hifn_device*) ;
 int hifn_reset_dma (struct hifn_device*,int) ;
 int hifn_stop_device (struct hifn_device*) ;
 int hifn_unregister_alg (struct hifn_device*) ;
 int hifn_unregister_rng (struct hifn_device*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct hifn_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;
 struct hifn_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void hifn_remove(struct pci_dev *pdev)
{
 int i;
 struct hifn_device *dev;

 dev = pci_get_drvdata(pdev);

 if (dev) {
  cancel_delayed_work_sync(&dev->work);

  hifn_unregister_rng(dev);
  hifn_unregister_alg(dev);
  hifn_reset_dma(dev, 1);
  hifn_stop_device(dev);

  free_irq(dev->irq, dev);
  tasklet_kill(&dev->tasklet);

  hifn_flush(dev);

  pci_free_consistent(pdev, sizeof(struct hifn_dma),
    dev->desc_virt, dev->desc_dma);
  for (i = 0; i < 3; ++i)
   if (dev->bar[i])
    iounmap(dev->bar[i]);

  kfree(dev);
 }

 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
