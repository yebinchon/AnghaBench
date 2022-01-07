
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ide_host {scalar_t__ host_priv; } ;
struct TYPE_4__ {int rqsize; int * hwif_data; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int init_mmio_iops_siimage (TYPE_1__*) ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void init_iops_siimage(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct ide_host *host = pci_get_drvdata(dev);

 hwif->hwif_data = ((void*)0);


 hwif->rqsize = 15;

 if (host->host_priv)
  init_mmio_iops_siimage(hwif);
}
