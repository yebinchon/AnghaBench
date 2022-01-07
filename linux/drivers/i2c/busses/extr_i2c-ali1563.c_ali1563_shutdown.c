
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ALI1563_SMB_IOSIZE ;
 int ali1563_smba ;
 int release_region (int ,int ) ;

__attribute__((used)) static void ali1563_shutdown(struct pci_dev *dev)
{
 release_region(ali1563_smba, ALI1563_SMB_IOSIZE);
}
