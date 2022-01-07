
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int irq; int msix_enabled; int msi_enabled; struct device dev; } ;
struct ishtp_device {int resume_wait; int suspend_wait; int devc; struct pci_dev* pdev; int print_log; } ;
struct ish_hw {int mem_addr; } ;


 int ENODEV ;
 int ENOMEM ;
 unsigned long IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int PCI_IRQ_ALL_TYPES ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (int ,struct ishtp_device*) ;
 int devm_request_irq (struct device*,int ,int ,unsigned long,int ,struct ishtp_device*) ;
 int init_waitqueue_head (int *) ;
 struct ishtp_device* ish_dev_init (struct pci_dev*) ;
 int ish_event_tracer ;
 int ish_init (struct ishtp_device*) ;
 int ish_invalid_pci_ids ;
 int ish_irq_handler ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 scalar_t__ pci_dev_present (int ) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;
 struct ish_hw* to_ish_hw (struct ishtp_device*) ;

__attribute__((used)) static int ish_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int ret;
 struct ish_hw *hw;
 unsigned long irq_flag = 0;
 struct ishtp_device *ishtp;
 struct device *dev = &pdev->dev;


 if (pci_dev_present(ish_invalid_pci_ids))
  return -ENODEV;


 ret = pcim_enable_device(pdev);
 if (ret) {
  dev_err(dev, "ISH: Failed to enable PCI device\n");
  return ret;
 }


 pci_set_master(pdev);


 ret = pcim_iomap_regions(pdev, 1 << 0, KBUILD_MODNAME);
 if (ret) {
  dev_err(dev, "ISH: Failed to get PCI regions\n");
  return ret;
 }


 ishtp = ish_dev_init(pdev);
 if (!ishtp) {
  ret = -ENOMEM;
  return ret;
 }
 hw = to_ish_hw(ishtp);
 ishtp->print_log = ish_event_tracer;


 hw->mem_addr = pcim_iomap_table(pdev)[0];
 ishtp->pdev = pdev;


 ret = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
 if (!pdev->msi_enabled && !pdev->msix_enabled)
  irq_flag = IRQF_SHARED;

 ret = devm_request_irq(dev, pdev->irq, ish_irq_handler,
          irq_flag, KBUILD_MODNAME, ishtp);
 if (ret) {
  dev_err(dev, "ISH: request IRQ %d failed\n", pdev->irq);
  return ret;
 }

 dev_set_drvdata(ishtp->devc, ishtp);

 init_waitqueue_head(&ishtp->suspend_wait);
 init_waitqueue_head(&ishtp->resume_wait);

 ret = ish_init(ishtp);
 if (ret)
  return ret;

 return 0;
}
