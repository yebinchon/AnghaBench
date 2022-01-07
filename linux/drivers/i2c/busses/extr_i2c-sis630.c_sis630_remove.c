
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int SIS630_SMB_IOREGION ;
 scalar_t__ SMB_STS ;
 int i2c_del_adapter (int *) ;
 int release_region (scalar_t__,int ) ;
 int sis630_adapter ;
 scalar_t__ smbus_base ;

__attribute__((used)) static void sis630_remove(struct pci_dev *dev)
{
 if (smbus_base) {
  i2c_del_adapter(&sis630_adapter);
  release_region(smbus_base + SMB_STS, SIS630_SMB_IOREGION);
  smbus_base = 0;
 }
}
