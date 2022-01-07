
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int SMB_IOSIZE ;
 int amd756_ioport ;
 int amd756_smbus ;
 int i2c_del_adapter (int *) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void amd756_remove(struct pci_dev *dev)
{
 i2c_del_adapter(&amd756_smbus);
 release_region(amd756_ioport, SMB_IOSIZE);
}
