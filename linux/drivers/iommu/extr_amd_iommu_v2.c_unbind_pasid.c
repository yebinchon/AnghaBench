
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pasid_state {int invalid; int pasid; TYPE_1__* device_state; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {struct iommu_domain* domain; } ;


 int amd_iommu_domain_clear_gcr3 (struct iommu_domain*,int ) ;
 int flush_workqueue (int ) ;
 int iommu_wq ;
 int smp_wmb () ;

__attribute__((used)) static void unbind_pasid(struct pasid_state *pasid_state)
{
 struct iommu_domain *domain;

 domain = pasid_state->device_state->domain;





 pasid_state->invalid = 1;


 smp_wmb();


 amd_iommu_domain_clear_gcr3(domain, pasid_state->pasid);


 flush_workqueue(iommu_wq);
}
