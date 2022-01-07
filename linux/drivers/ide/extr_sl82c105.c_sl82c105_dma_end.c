
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_7__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_6__ {int dev; } ;


 int ide_dma_end (TYPE_2__*) ;
 scalar_t__ ide_get_drivedata (TYPE_2__*) ;
 int pci_write_config_word (struct pci_dev*,int,unsigned long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int sl82c105_dma_end(ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 int reg = 0x44 + drive->dn * 4;
 int ret = ide_dma_end(drive);

 pci_write_config_word(dev, reg,
         (unsigned long)ide_get_drivedata(drive));

 return ret;
}
