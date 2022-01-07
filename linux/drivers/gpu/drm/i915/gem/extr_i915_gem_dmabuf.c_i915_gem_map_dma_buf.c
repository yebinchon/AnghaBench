
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int nents; struct scatterlist* sgl; } ;
struct scatterlist {int length; } ;
struct TYPE_4__ {TYPE_1__* pages; } ;
struct drm_i915_gem_object {TYPE_2__ mm; } ;
struct dma_buf_attachment {int dev; int dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {int nents; struct scatterlist* sgl; } ;


 int ENOMEM ;
 struct sg_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct drm_i915_gem_object* dma_buf_to_obj (int ) ;
 int dma_map_sg (int ,struct scatterlist*,int ,int) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int kfree (struct sg_table*) ;
 struct sg_table* kmalloc (int,int ) ;
 int sg_alloc_table (struct sg_table*,int,int ) ;
 int sg_free_table (struct sg_table*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,int ,int ) ;

__attribute__((used)) static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachment,
          enum dma_data_direction dir)
{
 struct drm_i915_gem_object *obj = dma_buf_to_obj(attachment->dmabuf);
 struct sg_table *st;
 struct scatterlist *src, *dst;
 int ret, i;

 ret = i915_gem_object_pin_pages(obj);
 if (ret)
  goto err;


 st = kmalloc(sizeof(struct sg_table), GFP_KERNEL);
 if (st == ((void*)0)) {
  ret = -ENOMEM;
  goto err_unpin_pages;
 }

 ret = sg_alloc_table(st, obj->mm.pages->nents, GFP_KERNEL);
 if (ret)
  goto err_free;

 src = obj->mm.pages->sgl;
 dst = st->sgl;
 for (i = 0; i < obj->mm.pages->nents; i++) {
  sg_set_page(dst, sg_page(src), src->length, 0);
  dst = sg_next(dst);
  src = sg_next(src);
 }

 if (!dma_map_sg(attachment->dev, st->sgl, st->nents, dir)) {
  ret = -ENOMEM;
  goto err_free_sg;
 }

 return st;

err_free_sg:
 sg_free_table(st);
err_free:
 kfree(st);
err_unpin_pages:
 i915_gem_object_unpin_pages(obj);
err:
 return ERR_PTR(ret);
}
