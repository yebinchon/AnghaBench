
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pasemi_smbus {int size; int base; int adapter; } ;


 int i2c_del_adapter (int *) ;
 int kfree (struct pasemi_smbus*) ;
 struct pasemi_smbus* pci_get_drvdata (struct pci_dev*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void pasemi_smb_remove(struct pci_dev *dev)
{
 struct pasemi_smbus *smbus = pci_get_drvdata(dev);

 i2c_del_adapter(&smbus->adapter);
 release_region(smbus->base, smbus->size);
 kfree(smbus);
}
