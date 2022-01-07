
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; } ;
typedef enum qm_hw_ver { ____Placeholder_qm_hw_ver } qm_hw_ver ;


 int QM_HW_UNKNOWN ;



enum qm_hw_ver hisi_qm_get_hw_version(struct pci_dev *pdev)
{
 switch (pdev->revision) {
 case 129:
 case 128:
  return pdev->revision;
 default:
  return QM_HW_UNKNOWN;
 }
}
