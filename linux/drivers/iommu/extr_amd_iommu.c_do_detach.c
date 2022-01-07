
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct protection_domain {int* dev_iommu; int dev_cnt; } ;
struct iommu_dev_data {size_t devid; size_t alias; int list; struct protection_domain* domain; } ;
struct amd_iommu {size_t index; } ;


 struct amd_iommu** amd_iommu_rlookup_table ;
 int clear_dte_entry (size_t) ;
 int device_flush_dte (struct iommu_dev_data*) ;
 int domain_flush_complete (struct protection_domain*) ;
 int domain_flush_tlb_pde (struct protection_domain*) ;
 int list_del (int *) ;

__attribute__((used)) static void do_detach(struct iommu_dev_data *dev_data)
{
 struct protection_domain *domain = dev_data->domain;
 struct amd_iommu *iommu;
 u16 alias;

 iommu = amd_iommu_rlookup_table[dev_data->devid];
 alias = dev_data->alias;


 dev_data->domain = ((void*)0);
 list_del(&dev_data->list);
 clear_dte_entry(dev_data->devid);
 if (alias != dev_data->devid)
  clear_dte_entry(alias);


 device_flush_dte(dev_data);


 domain_flush_tlb_pde(domain);


 domain_flush_complete(domain);


 domain->dev_iommu[iommu->index] -= 1;
 domain->dev_cnt -= 1;
}
