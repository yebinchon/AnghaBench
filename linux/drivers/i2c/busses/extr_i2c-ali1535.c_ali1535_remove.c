
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ALI1535_SMB_IOSIZE ;
 int ali1535_adapter ;
 int ali1535_smba ;
 int i2c_del_adapter (int *) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void ali1535_remove(struct pci_dev *dev)
{
 i2c_del_adapter(&ali1535_adapter);
 release_region(ali1535_smba, ALI1535_SMB_IOSIZE);
}
