
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct amd_iommu_device_info {int flags; void* max_pasids; } ;


 int AMD_IOMMU_DEVICE_FLAG_ATS_SUP ;
 int AMD_IOMMU_DEVICE_FLAG_EXEC_SUP ;
 int AMD_IOMMU_DEVICE_FLAG_PASID_SUP ;
 int AMD_IOMMU_DEVICE_FLAG_PRIV_SUP ;
 int AMD_IOMMU_DEVICE_FLAG_PRI_SUP ;
 int EINVAL ;
 int PCI_EXT_CAP_ID_ATS ;
 int PCI_EXT_CAP_ID_PASID ;
 int PCI_EXT_CAP_ID_PRI ;
 int PCI_PASID_CAP_EXEC ;
 int PCI_PASID_CAP_PRIV ;
 int amd_iommu_max_glx_val ;
 int amd_iommu_v2_supported () ;
 int memset (struct amd_iommu_device_info*,int ,int) ;
 void* min (int,int) ;
 int pci_ats_disabled () ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_max_pasids (struct pci_dev*) ;
 int pci_pasid_features (struct pci_dev*) ;

int amd_iommu_device_info(struct pci_dev *pdev,
                          struct amd_iommu_device_info *info)
{
 int max_pasids;
 int pos;

 if (pdev == ((void*)0) || info == ((void*)0))
  return -EINVAL;

 if (!amd_iommu_v2_supported())
  return -EINVAL;

 memset(info, 0, sizeof(*info));

 if (!pci_ats_disabled()) {
  pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ATS);
  if (pos)
   info->flags |= AMD_IOMMU_DEVICE_FLAG_ATS_SUP;
 }

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_PRI);
 if (pos)
  info->flags |= AMD_IOMMU_DEVICE_FLAG_PRI_SUP;

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_PASID);
 if (pos) {
  int features;

  max_pasids = 1 << (9 * (amd_iommu_max_glx_val + 1));
  max_pasids = min(max_pasids, (1 << 20));

  info->flags |= AMD_IOMMU_DEVICE_FLAG_PASID_SUP;
  info->max_pasids = min(pci_max_pasids(pdev), max_pasids);

  features = pci_pasid_features(pdev);
  if (features & PCI_PASID_CAP_EXEC)
   info->flags |= AMD_IOMMU_DEVICE_FLAG_EXEC_SUP;
  if (features & PCI_PASID_CAP_PRIV)
   info->flags |= AMD_IOMMU_DEVICE_FLAG_PRIV_SUP;
 }

 return 0;
}
