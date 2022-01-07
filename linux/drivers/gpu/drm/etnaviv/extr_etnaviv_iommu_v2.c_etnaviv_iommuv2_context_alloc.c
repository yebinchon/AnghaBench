
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct etnaviv_iommu_context {int mm; int mappings; int lock; int refcount; struct etnaviv_iommu_global* global; } ;
struct etnaviv_iommuv2_context {size_t id; struct etnaviv_iommu_context base; int mtlb_dma; int mtlb_cpu; } ;
struct TYPE_2__ {int pta_alloc; int * pta_cpu; } ;
struct etnaviv_iommu_global {TYPE_1__ v2; int dev; int lock; } ;


 size_t ETNAVIV_PTA_ENTRIES ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MMUv2_MAX_STLB_ENTRIES ;
 int MMUv2_PTE_EXCEPTION ;
 scalar_t__ SZ_1G ;
 scalar_t__ SZ_4K ;
 int clear_bit (size_t,int ) ;
 int dma_alloc_wc (int ,scalar_t__,int *,int ) ;
 int drm_mm_init (int *,scalar_t__,scalar_t__) ;
 size_t find_first_zero_bit (int ,size_t) ;
 int kref_init (int *) ;
 int memset32 (int ,int ,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (size_t,int ) ;
 int vfree (struct etnaviv_iommuv2_context*) ;
 struct etnaviv_iommuv2_context* vzalloc (int) ;

struct etnaviv_iommu_context *
etnaviv_iommuv2_context_alloc(struct etnaviv_iommu_global *global)
{
 struct etnaviv_iommuv2_context *v2_context;
 struct etnaviv_iommu_context *context;

 v2_context = vzalloc(sizeof(*v2_context));
 if (!v2_context)
  return ((void*)0);

 mutex_lock(&global->lock);
 v2_context->id = find_first_zero_bit(global->v2.pta_alloc,
          ETNAVIV_PTA_ENTRIES);
 if (v2_context->id < ETNAVIV_PTA_ENTRIES) {
  set_bit(v2_context->id, global->v2.pta_alloc);
 } else {
  mutex_unlock(&global->lock);
  goto out_free;
 }
 mutex_unlock(&global->lock);

 v2_context->mtlb_cpu = dma_alloc_wc(global->dev, SZ_4K,
         &v2_context->mtlb_dma, GFP_KERNEL);
 if (!v2_context->mtlb_cpu)
  goto out_free_id;

 memset32(v2_context->mtlb_cpu, MMUv2_PTE_EXCEPTION,
   MMUv2_MAX_STLB_ENTRIES);

 global->v2.pta_cpu[v2_context->id] = v2_context->mtlb_dma;

 context = &v2_context->base;
 context->global = global;
 kref_init(&context->refcount);
 mutex_init(&context->lock);
 INIT_LIST_HEAD(&context->mappings);
 drm_mm_init(&context->mm, SZ_4K, (u64)SZ_1G * 4 - SZ_4K);

 return context;

out_free_id:
 clear_bit(v2_context->id, global->v2.pta_alloc);
out_free:
 vfree(v2_context);
 return ((void*)0);
}
