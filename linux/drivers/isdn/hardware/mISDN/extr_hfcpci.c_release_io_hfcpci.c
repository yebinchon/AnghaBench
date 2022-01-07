
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pci_io; int dmahandle; int fifos; int timer; } ;
struct hfc_pci {TYPE_1__ hw; int pdev; } ;


 int PCI_COMMAND ;
 int del_timer (int *) ;
 int iounmap (int ) ;
 int pci_free_consistent (int ,int,int ,int ) ;
 int pci_write_config_word (int ,int ,int ) ;

__attribute__((used)) static void
release_io_hfcpci(struct hfc_pci *hc)
{

 pci_write_config_word(hc->pdev, PCI_COMMAND, 0);
 del_timer(&hc->hw.timer);
 pci_free_consistent(hc->pdev, 0x8000, hc->hw.fifos, hc->hw.dmahandle);
 iounmap(hc->hw.pci_io);
}
