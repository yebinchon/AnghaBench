
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etnaviv_iommu_context {struct etnaviv_iommu_global* global; int mm; int mappings; int lock; int refcount; } ;
struct etnaviv_iommuv1_context {struct etnaviv_iommu_context base; int pgtable_cpu; int pgtable_dma; } ;
struct TYPE_2__ {struct etnaviv_iommu_context* shared_context; } ;
struct etnaviv_iommu_global {int lock; TYPE_1__ v1; int bad_page_dma; int dev; } ;


 int GFP_KERNEL ;
 int GPU_MEM_START ;
 int INIT_LIST_HEAD (int *) ;
 int PT_ENTRIES ;
 int PT_SIZE ;
 int SZ_4K ;
 int dma_alloc_wc (int ,int ,int *,int ) ;
 int drm_mm_init (int *,int ,int) ;
 int etnaviv_iommu_context_get (struct etnaviv_iommu_context*) ;
 int kfree (struct etnaviv_iommuv1_context*) ;
 int kref_init (int *) ;
 struct etnaviv_iommuv1_context* kzalloc (int,int ) ;
 int memset32 (int ,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct etnaviv_iommu_context *
etnaviv_iommuv1_context_alloc(struct etnaviv_iommu_global *global)
{
 struct etnaviv_iommuv1_context *v1_context;
 struct etnaviv_iommu_context *context;

 mutex_lock(&global->lock);






 if (global->v1.shared_context) {
  context = global->v1.shared_context;
  etnaviv_iommu_context_get(context);
  mutex_unlock(&global->lock);
  return context;
 }

 v1_context = kzalloc(sizeof(*v1_context), GFP_KERNEL);
 if (!v1_context) {
  mutex_unlock(&global->lock);
  return ((void*)0);
 }

 v1_context->pgtable_cpu = dma_alloc_wc(global->dev, PT_SIZE,
            &v1_context->pgtable_dma,
            GFP_KERNEL);
 if (!v1_context->pgtable_cpu)
  goto out_free;

 memset32(v1_context->pgtable_cpu, global->bad_page_dma, PT_ENTRIES);

 context = &v1_context->base;
 context->global = global;
 kref_init(&context->refcount);
 mutex_init(&context->lock);
 INIT_LIST_HEAD(&context->mappings);
 drm_mm_init(&context->mm, GPU_MEM_START, PT_ENTRIES * SZ_4K);
 context->global->v1.shared_context = context;

 mutex_unlock(&global->lock);

 return context;

out_free:
 mutex_unlock(&global->lock);
 kfree(v1_context);
 return ((void*)0);
}
