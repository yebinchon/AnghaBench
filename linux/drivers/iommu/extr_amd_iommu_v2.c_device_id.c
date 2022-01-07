
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;



__attribute__((used)) static u16 device_id(struct pci_dev *pdev)
{
 u16 devid;

 devid = pdev->bus->number;
 devid = (devid << 8) | pdev->devfn;

 return devid;
}
