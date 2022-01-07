
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct protection_domain {int* dev_iommu; int dev_cnt; int dev_list; } ;
struct TYPE_2__ {int enabled; } ;
struct iommu_dev_data {size_t devid; size_t alias; int iommu_v2; int list; struct protection_domain* domain; TYPE_1__ ats; } ;
struct amd_iommu {size_t index; } ;


 struct amd_iommu** amd_iommu_rlookup_table ;
 int device_flush_dte (struct iommu_dev_data*) ;
 int list_add (int *,int *) ;
 int set_dte_entry (size_t,struct protection_domain*,int,int ) ;

__attribute__((used)) static void do_attach(struct iommu_dev_data *dev_data,
        struct protection_domain *domain)
{
 struct amd_iommu *iommu;
 u16 alias;
 bool ats;

 iommu = amd_iommu_rlookup_table[dev_data->devid];
 alias = dev_data->alias;
 ats = dev_data->ats.enabled;


 dev_data->domain = domain;
 list_add(&dev_data->list, &domain->dev_list);


 domain->dev_iommu[iommu->index] += 1;
 domain->dev_cnt += 1;


 set_dte_entry(dev_data->devid, domain, ats, dev_data->iommu_v2);
 if (alias != dev_data->devid)
  set_dte_entry(alias, domain, ats, dev_data->iommu_v2);

 device_flush_dte(dev_data);
}
