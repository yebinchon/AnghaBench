
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int edac_dbg (int ,char*) ;
 int r82600_probe1 (struct pci_dev*,int ) ;

__attribute__((used)) static int r82600_init_one(struct pci_dev *pdev,
      const struct pci_device_id *ent)
{
 edac_dbg(0, "\n");


 return r82600_probe1(pdev, ent->driver_data);
}
