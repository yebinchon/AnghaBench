
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int broken_parity_status; int dev; } ;


 int EDAC_PCI ;
 int KERN_CRIT ;
 int PCI_HEADER_TYPE ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int PCI_STATUS_DETECTED_PARITY ;
 int PCI_STATUS_PARITY ;
 int PCI_STATUS_SIG_SYSTEM_ERROR ;
 int atomic_inc (int *) ;
 int dev_name (int *) ;
 int edac_dbg (int,char*,int,int ) ;
 int edac_printk (int ,int ,char*,int ) ;
 int get_pci_parity_status (struct pci_dev*,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pci_name (struct pci_dev*) ;
 int pci_nonparity_count ;
 int pci_parity_count ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void edac_pci_dev_parity_test(struct pci_dev *dev)
{
 unsigned long flags;
 u16 status;
 u8 header_type;


 local_irq_save(flags);


 status = get_pci_parity_status(dev, 0);


 pci_read_config_byte(dev, PCI_HEADER_TYPE, &header_type);

 local_irq_restore(flags);

 edac_dbg(4, "PCI STATUS= 0x%04x %s\n", status, dev_name(&dev->dev));




 if (status && !dev->broken_parity_status) {
  if (status & (PCI_STATUS_SIG_SYSTEM_ERROR)) {
   edac_printk(KERN_CRIT, EDAC_PCI,
    "Signaled System Error on %s\n",
    pci_name(dev));
   atomic_inc(&pci_nonparity_count);
  }

  if (status & (PCI_STATUS_PARITY)) {
   edac_printk(KERN_CRIT, EDAC_PCI,
    "Master Data Parity Error on %s\n",
    pci_name(dev));

   atomic_inc(&pci_parity_count);
  }

  if (status & (PCI_STATUS_DETECTED_PARITY)) {
   edac_printk(KERN_CRIT, EDAC_PCI,
    "Detected Parity Error on %s\n",
    pci_name(dev));

   atomic_inc(&pci_parity_count);
  }
 }


 edac_dbg(4, "PCI HEADER TYPE= 0x%02x %s\n",
   header_type, dev_name(&dev->dev));

 if ((header_type & 0x7F) == PCI_HEADER_TYPE_BRIDGE) {

  status = get_pci_parity_status(dev, 1);

  edac_dbg(4, "PCI SEC_STATUS= 0x%04x %s\n",
    status, dev_name(&dev->dev));




  if (status && !dev->broken_parity_status) {
   if (status & (PCI_STATUS_SIG_SYSTEM_ERROR)) {
    edac_printk(KERN_CRIT, EDAC_PCI, "Bridge "
     "Signaled System Error on %s\n",
     pci_name(dev));
    atomic_inc(&pci_nonparity_count);
   }

   if (status & (PCI_STATUS_PARITY)) {
    edac_printk(KERN_CRIT, EDAC_PCI, "Bridge "
     "Master Data Parity Error on "
     "%s\n", pci_name(dev));

    atomic_inc(&pci_parity_count);
   }

   if (status & (PCI_STATUS_DETECTED_PARITY)) {
    edac_printk(KERN_CRIT, EDAC_PCI, "Bridge "
     "Detected Parity Error on %s\n",
     pci_name(dev));

    atomic_inc(&pci_parity_count);
   }
  }
 }
}
