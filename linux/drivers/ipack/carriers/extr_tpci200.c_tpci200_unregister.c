
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tpci200_board {TYPE_1__* info; } ;
struct TYPE_7__ {int irq; } ;
struct TYPE_6__ {TYPE_2__* pdev; int cfg_regs; int interface_regs; } ;


 int TPCI200_CFG_MEM_BAR ;
 int TPCI200_IO_ID_INT_SPACES_BAR ;
 int TPCI200_IP_INTERFACE_BAR ;
 int TPCI200_MEM16_SPACE_BAR ;
 int TPCI200_MEM8_SPACE_BAR ;
 int free_irq (int ,void*) ;
 int pci_dev_put (TYPE_2__*) ;
 int pci_disable_device (TYPE_2__*) ;
 int pci_iounmap (TYPE_2__*,int ) ;
 int pci_release_region (TYPE_2__*,int ) ;

__attribute__((used)) static void tpci200_unregister(struct tpci200_board *tpci200)
{
 free_irq(tpci200->info->pdev->irq, (void *) tpci200);

 pci_iounmap(tpci200->info->pdev, tpci200->info->interface_regs);
 pci_iounmap(tpci200->info->pdev, tpci200->info->cfg_regs);

 pci_release_region(tpci200->info->pdev, TPCI200_IP_INTERFACE_BAR);
 pci_release_region(tpci200->info->pdev, TPCI200_IO_ID_INT_SPACES_BAR);
 pci_release_region(tpci200->info->pdev, TPCI200_MEM16_SPACE_BAR);
 pci_release_region(tpci200->info->pdev, TPCI200_MEM8_SPACE_BAR);
 pci_release_region(tpci200->info->pdev, TPCI200_CFG_MEM_BAR);

 pci_disable_device(tpci200->info->pdev);
 pci_dev_put(tpci200->info->pdev);
}
