
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommuv1_context {int pgtable_cpu; } ;
struct etnaviv_iommu_context {int dummy; } ;


 int PT_SIZE ;
 int memcpy (void*,int ,int ) ;
 struct etnaviv_iommuv1_context* to_v1_context (struct etnaviv_iommu_context*) ;

__attribute__((used)) static void etnaviv_iommuv1_dump(struct etnaviv_iommu_context *context,
     void *buf)
{
 struct etnaviv_iommuv1_context *v1_context = to_v1_context(context);

 memcpy(buf, v1_context->pgtable_cpu, PT_SIZE);
}
