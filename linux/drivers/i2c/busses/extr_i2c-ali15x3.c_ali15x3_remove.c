
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ALI15X3_SMB_IOSIZE ;
 int ali15x3_adapter ;
 int ali15x3_smba ;
 int i2c_del_adapter (int *) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void ali15x3_remove(struct pci_dev *dev)
{
 i2c_del_adapter(&ali15x3_adapter);
 release_region(ali15x3_smba, ALI15X3_SMB_IOSIZE);
}
