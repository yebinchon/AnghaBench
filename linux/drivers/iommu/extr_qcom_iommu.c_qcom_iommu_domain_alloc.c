
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct qcom_iommu_domain {struct iommu_domain domain; int pgtbl_lock; int init_mutex; } ;


 int GFP_KERNEL ;
 unsigned int IOMMU_DOMAIN_DMA ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 scalar_t__ iommu_get_dma_cookie (struct iommu_domain*) ;
 int kfree (struct qcom_iommu_domain*) ;
 struct qcom_iommu_domain* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iommu_domain *qcom_iommu_domain_alloc(unsigned type)
{
 struct qcom_iommu_domain *qcom_domain;

 if (type != IOMMU_DOMAIN_UNMANAGED && type != IOMMU_DOMAIN_DMA)
  return ((void*)0);





 qcom_domain = kzalloc(sizeof(*qcom_domain), GFP_KERNEL);
 if (!qcom_domain)
  return ((void*)0);

 if (type == IOMMU_DOMAIN_DMA &&
     iommu_get_dma_cookie(&qcom_domain->domain)) {
  kfree(qcom_domain);
  return ((void*)0);
 }

 mutex_init(&qcom_domain->init_mutex);
 spin_lock_init(&qcom_domain->pgtbl_lock);

 return &qcom_domain->domain;
}
