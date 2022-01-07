
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int SMB_IOSIZE ;
 int i2c_del_adapter (int *) ;
 int release_region (scalar_t__,int ) ;
 int sis96x_adapter ;
 scalar_t__ sis96x_smbus_base ;

__attribute__((used)) static void sis96x_remove(struct pci_dev *dev)
{
 if (sis96x_smbus_base) {
  i2c_del_adapter(&sis96x_adapter);
  release_region(sis96x_smbus_base, SMB_IOSIZE);
  sis96x_smbus_base = 0;
 }
}
