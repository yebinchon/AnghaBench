
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct etnaviv_iommu_context {TYPE_2__* global; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* dump ) (struct etnaviv_iommu_context*,void*) ;} ;


 int stub1 (struct etnaviv_iommu_context*,void*) ;

void etnaviv_iommu_dump(struct etnaviv_iommu_context *context, void *buf)
{
 context->global->ops->dump(context, buf);
}
