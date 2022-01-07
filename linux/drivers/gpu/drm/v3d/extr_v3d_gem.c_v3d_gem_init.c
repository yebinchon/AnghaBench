
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v3d_dev {int pt_paddr; scalar_t__ pt; int dev; int mm; int cache_clean_lock; int sched_lock; int reset_lock; int bo_lock; int job_lock; int mm_lock; TYPE_1__* queue; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int fence_context; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int V3D_MAX_QUEUES ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 int dev_err (int ,char*) ;
 scalar_t__ dma_alloc_wc (int ,int,int *,int) ;
 int dma_fence_context_alloc (int) ;
 int dma_free_coherent (int ,int,void*,int ) ;
 int drm_mm_init (int *,int,int) ;
 int drm_mm_takedown (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 struct v3d_dev* to_v3d_dev (struct drm_device*) ;
 int v3d_init_hw_state (struct v3d_dev*) ;
 int v3d_mmu_set_page_table (struct v3d_dev*) ;
 int v3d_sched_init (struct v3d_dev*) ;

int
v3d_gem_init(struct drm_device *dev)
{
 struct v3d_dev *v3d = to_v3d_dev(dev);
 u32 pt_size = 4096 * 1024;
 int ret, i;

 for (i = 0; i < V3D_MAX_QUEUES; i++)
  v3d->queue[i].fence_context = dma_fence_context_alloc(1);

 spin_lock_init(&v3d->mm_lock);
 spin_lock_init(&v3d->job_lock);
 mutex_init(&v3d->bo_lock);
 mutex_init(&v3d->reset_lock);
 mutex_init(&v3d->sched_lock);
 mutex_init(&v3d->cache_clean_lock);





 drm_mm_init(&v3d->mm, 1, pt_size / sizeof(u32) - 1);

 v3d->pt = dma_alloc_wc(v3d->dev, pt_size,
          &v3d->pt_paddr,
          GFP_KERNEL | __GFP_NOWARN | __GFP_ZERO);
 if (!v3d->pt) {
  drm_mm_takedown(&v3d->mm);
  dev_err(v3d->dev,
   "Failed to allocate page tables. "
   "Please ensure you have CMA enabled.\n");
  return -ENOMEM;
 }

 v3d_init_hw_state(v3d);
 v3d_mmu_set_page_table(v3d);

 ret = v3d_sched_init(v3d);
 if (ret) {
  drm_mm_takedown(&v3d->mm);
  dma_free_coherent(v3d->dev, 4096 * 1024, (void *)v3d->pt,
      v3d->pt_paddr);
 }

 return 0;
}
