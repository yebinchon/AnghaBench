
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ IE31200_CAPID0 ;
 unsigned char IE31200_CAPID0_ECC ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,unsigned char*) ;

__attribute__((used)) static bool ecc_capable(struct pci_dev *pdev)
{
 unsigned char capid0_4b;

 pci_read_config_byte(pdev, IE31200_CAPID0 + 3, &capid0_4b);
 if (capid0_4b & IE31200_CAPID0_ECC)
  return 0;
 return 1;
}
