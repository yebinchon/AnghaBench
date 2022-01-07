
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct iommu_dev_data {size_t devid; int pri_tlp; } ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;


 struct amd_iommu** amd_iommu_rlookup_table ;
 int build_complete_ppr (struct iommu_cmd*,size_t,int,int,int,int ) ;
 struct iommu_dev_data* get_dev_data (int *) ;
 int iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;

int amd_iommu_complete_ppr(struct pci_dev *pdev, int pasid,
      int status, int tag)
{
 struct iommu_dev_data *dev_data;
 struct amd_iommu *iommu;
 struct iommu_cmd cmd;

 dev_data = get_dev_data(&pdev->dev);
 iommu = amd_iommu_rlookup_table[dev_data->devid];

 build_complete_ppr(&cmd, dev_data->devid, pasid, status,
      tag, dev_data->pri_tlp);

 return iommu_queue_command(iommu, &cmd);
}
