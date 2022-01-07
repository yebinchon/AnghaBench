
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; int irq; } ;
struct TYPE_2__ {int device; } ;
struct fw_ohci {scalar_t__ next_config_rom; scalar_t__ config_rom; scalar_t__ misc_buffer; int registers; struct fw_ohci* ir_context_list; struct fw_ohci* it_context_list; int at_response_ctx; int at_request_ctx; int misc_buffer_bus; TYPE_1__ card; int ar_response_ctx; int ar_request_ctx; int config_rom_bus; int next_config_rom_bus; int bus_reset_work; } ;


 int CONFIG_ROM_SIZE ;
 int OHCI1394_HCControlSet ;
 int OHCI1394_HCControl_LPS ;
 int OHCI1394_IntMaskClear ;
 int PAGE_SIZE ;
 int ar_context_release (int *) ;
 int cancel_work_sync (int *) ;
 int context_release (int *) ;
 int dev_notice (int *,char*) ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int flush_writes (struct fw_ohci*) ;
 int free_irq (int ,struct fw_ohci*) ;
 int fw_core_remove_card (TYPE_1__*) ;
 int kfree (struct fw_ohci*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct fw_ohci* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int pmac_ohci_off (struct pci_dev*) ;
 int reg_read (struct fw_ohci*,int ) ;
 int reg_write (struct fw_ohci*,int ,int ) ;
 int software_reset (struct fw_ohci*) ;

__attribute__((used)) static void pci_remove(struct pci_dev *dev)
{
 struct fw_ohci *ohci = pci_get_drvdata(dev);





 if (reg_read(ohci, OHCI1394_HCControlSet) & OHCI1394_HCControl_LPS) {
  reg_write(ohci, OHCI1394_IntMaskClear, ~0);
  flush_writes(ohci);
 }
 cancel_work_sync(&ohci->bus_reset_work);
 fw_core_remove_card(&ohci->card);






 software_reset(ohci);
 free_irq(dev->irq, ohci);

 if (ohci->next_config_rom && ohci->next_config_rom != ohci->config_rom)
  dma_free_coherent(ohci->card.device, CONFIG_ROM_SIZE,
      ohci->next_config_rom, ohci->next_config_rom_bus);
 if (ohci->config_rom)
  dma_free_coherent(ohci->card.device, CONFIG_ROM_SIZE,
      ohci->config_rom, ohci->config_rom_bus);
 ar_context_release(&ohci->ar_request_ctx);
 ar_context_release(&ohci->ar_response_ctx);
 dma_free_coherent(ohci->card.device, PAGE_SIZE,
     ohci->misc_buffer, ohci->misc_buffer_bus);
 context_release(&ohci->at_request_ctx);
 context_release(&ohci->at_response_ctx);
 kfree(ohci->it_context_list);
 kfree(ohci->ir_context_list);
 pci_disable_msi(dev);
 pci_iounmap(dev, ohci->registers);
 pci_release_region(dev, 0);
 pci_disable_device(dev);
 kfree(ohci);
 pmac_ohci_off(dev);

 dev_notice(&dev->dev, "removed fw-ohci device\n");
}
