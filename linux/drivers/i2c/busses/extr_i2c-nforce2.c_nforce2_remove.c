
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nforce2_smbus {int size; scalar_t__ base; int adapter; } ;


 int i2c_del_adapter (int *) ;
 int kfree (struct nforce2_smbus*) ;
 int nforce2_set_reference (int *) ;
 struct nforce2_smbus* pci_get_drvdata (struct pci_dev*) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static void nforce2_remove(struct pci_dev *dev)
{
 struct nforce2_smbus *smbuses = pci_get_drvdata(dev);

 nforce2_set_reference(((void*)0));
 if (smbuses[0].base) {
  i2c_del_adapter(&smbuses[0].adapter);
  release_region(smbuses[0].base, smbuses[0].size);
 }
 if (smbuses[1].base) {
  i2c_del_adapter(&smbuses[1].adapter);
  release_region(smbuses[1].base, smbuses[1].size);
 }
 kfree(smbuses);
}
