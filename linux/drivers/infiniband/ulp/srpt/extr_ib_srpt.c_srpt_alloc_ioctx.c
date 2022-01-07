
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_ioctx {int buf; int dma; } ;
struct srpt_device {int device; } ;
struct kmem_cache {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int GFP_KERNEL ;
 int ib_dma_map_single (int ,int ,int ,int) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int kfree (struct srpt_ioctx*) ;
 int kmem_cache_alloc (struct kmem_cache*,int ) ;
 int kmem_cache_free (struct kmem_cache*,int ) ;
 int kmem_cache_size (struct kmem_cache*) ;
 struct srpt_ioctx* kzalloc (int,int ) ;

__attribute__((used)) static struct srpt_ioctx *srpt_alloc_ioctx(struct srpt_device *sdev,
        int ioctx_size,
        struct kmem_cache *buf_cache,
        enum dma_data_direction dir)
{
 struct srpt_ioctx *ioctx;

 ioctx = kzalloc(ioctx_size, GFP_KERNEL);
 if (!ioctx)
  goto err;

 ioctx->buf = kmem_cache_alloc(buf_cache, GFP_KERNEL);
 if (!ioctx->buf)
  goto err_free_ioctx;

 ioctx->dma = ib_dma_map_single(sdev->device, ioctx->buf,
           kmem_cache_size(buf_cache), dir);
 if (ib_dma_mapping_error(sdev->device, ioctx->dma))
  goto err_free_buf;

 return ioctx;

err_free_buf:
 kmem_cache_free(buf_cache, ioctx->buf);
err_free_ioctx:
 kfree(ioctx);
err:
 return ((void*)0);
}
