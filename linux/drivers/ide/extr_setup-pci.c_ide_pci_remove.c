
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ide_host {int host_flags; scalar_t__* dev; } ;


 int IDE_HFLAG_CS5520 ;
 int IDE_HFLAG_NO_DMA ;
 int IDE_HFLAG_SINGLE ;
 int ide_host_remove (struct ide_host*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_selected_regions (struct pci_dev*,int) ;
 struct pci_dev* to_pci_dev (scalar_t__) ;

void ide_pci_remove(struct pci_dev *dev)
{
 struct ide_host *host = pci_get_drvdata(dev);
 struct pci_dev *dev2 = host->dev[1] ? to_pci_dev(host->dev[1]) : ((void*)0);
 int bars;

 if (host->host_flags & IDE_HFLAG_SINGLE)
  bars = (1 << 2) - 1;
 else
  bars = (1 << 4) - 1;

 if ((host->host_flags & IDE_HFLAG_NO_DMA) == 0) {
  if (host->host_flags & IDE_HFLAG_CS5520)
   bars |= (1 << 2);
  else
   bars |= (1 << 4);
 }

 ide_host_remove(host);

 if (dev2)
  pci_release_selected_regions(dev2, bars);
 pci_release_selected_regions(dev, bars);

 if (dev2)
  pci_disable_device(dev2);
 pci_disable_device(dev);
}
