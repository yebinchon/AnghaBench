
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_pages; TYPE_4__* ttm; } ;
struct virtio_gpu_object {int * pages; TYPE_3__ tbo; } ;
struct virtio_gpu_device {int vdev; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_2__* bdev; struct page** pages; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {int (* ttm_tt_populate ) (TYPE_4__*,struct ttm_operation_ctx*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PAGE_MASK ;
 int PAGE_SHIFT ;
 size_t SCATTERLIST_MAX_SEGMENT ;
 int __sg_alloc_table_from_pages (int *,struct page**,int,int ,int,size_t,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int stub1 (TYPE_4__*,struct ttm_operation_ctx*) ;
 scalar_t__ tt_unpopulated ;
 size_t virtio_max_dma_size (int ) ;

int virtio_gpu_object_get_sg_table(struct virtio_gpu_device *qdev,
       struct virtio_gpu_object *bo)
{
 int ret;
 struct page **pages = bo->tbo.ttm->pages;
 int nr_pages = bo->tbo.num_pages;
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0
 };
 size_t max_segment;


 if (bo->pages)
  return 0;

 if (bo->tbo.ttm->state == tt_unpopulated)
  bo->tbo.ttm->bdev->driver->ttm_tt_populate(bo->tbo.ttm, &ctx);
 bo->pages = kmalloc(sizeof(struct sg_table), GFP_KERNEL);
 if (!bo->pages)
  goto out;

 max_segment = virtio_max_dma_size(qdev->vdev);
 max_segment &= PAGE_MASK;
 if (max_segment > SCATTERLIST_MAX_SEGMENT)
  max_segment = SCATTERLIST_MAX_SEGMENT;
 ret = __sg_alloc_table_from_pages(bo->pages, pages, nr_pages, 0,
       nr_pages << PAGE_SHIFT,
       max_segment, GFP_KERNEL);
 if (ret)
  goto out;
 return 0;
out:
 kfree(bo->pages);
 bo->pages = ((void*)0);
 return -ENOMEM;
}
