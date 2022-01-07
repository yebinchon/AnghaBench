
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ is_bdx_ioat (struct pci_dev*) ;
 scalar_t__ is_hsw_ioat (struct pci_dev*) ;
 scalar_t__ is_ivb_ioat (struct pci_dev*) ;
 scalar_t__ is_jf_ioat (struct pci_dev*) ;
 scalar_t__ is_skx_ioat (struct pci_dev*) ;
 scalar_t__ is_snb_ioat (struct pci_dev*) ;

__attribute__((used)) static bool is_xeon_cb32(struct pci_dev *pdev)
{
 return is_jf_ioat(pdev) || is_snb_ioat(pdev) || is_ivb_ioat(pdev) ||
  is_hsw_ioat(pdev) || is_bdx_ioat(pdev) || is_skx_ioat(pdev);
}
