
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int qdep; } ;
struct iommu_dev_data {size_t devid; TYPE_1__ ats; } ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;


 struct amd_iommu** amd_iommu_rlookup_table ;
 int build_inv_iotlb_pages (struct iommu_cmd*,size_t,int,int ,size_t) ;
 int iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;

__attribute__((used)) static int device_flush_iotlb(struct iommu_dev_data *dev_data,
         u64 address, size_t size)
{
 struct amd_iommu *iommu;
 struct iommu_cmd cmd;
 int qdep;

 qdep = dev_data->ats.qdep;
 iommu = amd_iommu_rlookup_table[dev_data->devid];

 build_inv_iotlb_pages(&cmd, dev_data->devid, qdep, address, size);

 return iommu_queue_command(iommu, &cmd);
}
