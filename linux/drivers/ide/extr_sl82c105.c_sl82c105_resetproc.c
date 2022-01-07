
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int dev; } ;


 int CTRL_P0F16 ;
 int CTRL_P1F16 ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sl82c105_resetproc(ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 u32 val;

 pci_read_config_dword(dev, 0x40, &val);
 val |= (CTRL_P1F16 | CTRL_P0F16);
 pci_write_config_dword(dev, 0x40, val);
}
