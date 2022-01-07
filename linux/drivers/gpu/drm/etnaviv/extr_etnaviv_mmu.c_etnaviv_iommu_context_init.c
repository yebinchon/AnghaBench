
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct etnaviv_iommu_global {scalar_t__ version; TYPE_1__* ops; int dev; int memory_base; } ;
struct TYPE_5__ {int iova; } ;
struct etnaviv_iommu_context {TYPE_2__ cmdbuf_mapping; } ;
struct etnaviv_cmdbuf_suballoc {int dummy; } ;
struct TYPE_4__ {int (* free ) (struct etnaviv_iommu_context*) ;} ;


 scalar_t__ ETNAVIV_IOMMU_V1 ;
 int dev_err (int ,char*) ;
 int etnaviv_cmdbuf_suballoc_map (struct etnaviv_cmdbuf_suballoc*,struct etnaviv_iommu_context*,TYPE_2__*,int ) ;
 int etnaviv_cmdbuf_suballoc_unmap (struct etnaviv_iommu_context*,TYPE_2__*) ;
 struct etnaviv_iommu_context* etnaviv_iommuv1_context_alloc (struct etnaviv_iommu_global*) ;
 struct etnaviv_iommu_context* etnaviv_iommuv2_context_alloc (struct etnaviv_iommu_global*) ;
 int stub1 (struct etnaviv_iommu_context*) ;

struct etnaviv_iommu_context *
etnaviv_iommu_context_init(struct etnaviv_iommu_global *global,
      struct etnaviv_cmdbuf_suballoc *suballoc)
{
 struct etnaviv_iommu_context *ctx;
 int ret;

 if (global->version == ETNAVIV_IOMMU_V1)
  ctx = etnaviv_iommuv1_context_alloc(global);
 else
  ctx = etnaviv_iommuv2_context_alloc(global);

 if (!ctx)
  return ((void*)0);

 ret = etnaviv_cmdbuf_suballoc_map(suballoc, ctx, &ctx->cmdbuf_mapping,
       global->memory_base);
 if (ret)
  goto out_free;

 if (global->version == ETNAVIV_IOMMU_V1 &&
     ctx->cmdbuf_mapping.iova > 0x80000000) {
  dev_err(global->dev,
          "command buffer outside valid memory window\n");
  goto out_unmap;
 }

 return ctx;

out_unmap:
 etnaviv_cmdbuf_suballoc_unmap(ctx, &ctx->cmdbuf_mapping);
out_free:
 global->ops->free(ctx);
 return ((void*)0);
}
