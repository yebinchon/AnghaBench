
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int GET_BITFIELD (int ,int,int) ;
 int SKX_GET_MTMTR (struct pci_dev*,int ) ;

__attribute__((used)) static bool skx_check_ecc(struct pci_dev *pdev)
{
 u32 mtmtr;

 SKX_GET_MTMTR(pdev, mtmtr);

 return !!GET_BITFIELD(mtmtr, 2, 2);
}
