
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct ipmmu_vmsa_domain {struct iommu_domain io_domain; int mutex; } ;


 int GFP_KERNEL ;
 struct ipmmu_vmsa_domain* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct iommu_domain *__ipmmu_domain_alloc(unsigned type)
{
 struct ipmmu_vmsa_domain *domain;

 domain = kzalloc(sizeof(*domain), GFP_KERNEL);
 if (!domain)
  return ((void*)0);

 mutex_init(&domain->mutex);

 return &domain->io_domain;
}
