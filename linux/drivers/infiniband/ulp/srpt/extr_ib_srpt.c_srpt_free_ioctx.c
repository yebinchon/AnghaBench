
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_ioctx {int buf; int dma; } ;
struct srpt_device {int device; } ;
struct kmem_cache {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int ib_dma_unmap_single (int ,int ,int ,int) ;
 int kfree (struct srpt_ioctx*) ;
 int kmem_cache_free (struct kmem_cache*,int ) ;
 int kmem_cache_size (struct kmem_cache*) ;

__attribute__((used)) static void srpt_free_ioctx(struct srpt_device *sdev, struct srpt_ioctx *ioctx,
       struct kmem_cache *buf_cache,
       enum dma_data_direction dir)
{
 if (!ioctx)
  return;

 ib_dma_unmap_single(sdev->device, ioctx->dma,
       kmem_cache_size(buf_cache), dir);
 kmem_cache_free(buf_cache, ioctx->buf);
 kfree(ioctx);
}
