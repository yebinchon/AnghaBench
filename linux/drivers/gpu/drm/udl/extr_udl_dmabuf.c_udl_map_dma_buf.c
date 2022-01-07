
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; struct drm_device* dev; } ;
struct udl_gem_object {TYPE_3__* sg; int pages; TYPE_2__ base; } ;
struct sg_table {unsigned int orig_nents; struct scatterlist* sgl; } ;
struct udl_drm_dmabuf_attachment {int dir; int is_mapped; struct sg_table sgt; } ;
struct udl_device {int gem_lock; } ;
struct scatterlist {int offset; int length; } ;
struct drm_device {struct udl_device* dev_private; } ;
struct dma_buf_attachment {struct udl_drm_dmabuf_attachment* priv; int dev; TYPE_1__* dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {struct scatterlist* sgl; int orig_nents; } ;
struct TYPE_6__ {int size; int priv; } ;


 int DMA_NONE ;
 int DRM_DEBUG_PRIME (char*,int ,int ,int) ;
 int DRM_ERROR (char*) ;
 int EIO ;
 int ENOMEM ;
 struct sg_table* ERR_CAST (TYPE_3__*) ;
 struct sg_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_3__*) ;
 int PAGE_SIZE ;
 int dev_name (int ) ;
 int dma_map_sg (int ,struct scatterlist*,unsigned int,int) ;
 TYPE_3__* drm_prime_pages_to_sg (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sg_alloc_table (struct sg_table*,int ,int ) ;
 int sg_free_table (struct sg_table*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,int ,int ) ;
 struct udl_gem_object* to_udl_bo (int ) ;
 int udl_gem_get_pages (struct udl_gem_object*) ;

__attribute__((used)) static struct sg_table *udl_map_dma_buf(struct dma_buf_attachment *attach,
     enum dma_data_direction dir)
{
 struct udl_drm_dmabuf_attachment *udl_attach = attach->priv;
 struct udl_gem_object *obj = to_udl_bo(attach->dmabuf->priv);
 struct drm_device *dev = obj->base.dev;
 struct udl_device *udl = dev->dev_private;
 struct scatterlist *rd, *wr;
 struct sg_table *sgt = ((void*)0);
 unsigned int i;
 int page_count;
 int nents, ret;

 DRM_DEBUG_PRIME("[DEV:%s] size:%zd dir=%d\n", dev_name(attach->dev),
   attach->dmabuf->size, dir);


 if (udl_attach->dir == dir && udl_attach->is_mapped)
  return &udl_attach->sgt;

 if (!obj->pages) {
  ret = udl_gem_get_pages(obj);
  if (ret) {
   DRM_ERROR("failed to map pages.\n");
   return ERR_PTR(ret);
  }
 }

 page_count = obj->base.size / PAGE_SIZE;
 obj->sg = drm_prime_pages_to_sg(obj->pages, page_count);
 if (IS_ERR(obj->sg)) {
  DRM_ERROR("failed to allocate sgt.\n");
  return ERR_CAST(obj->sg);
 }

 sgt = &udl_attach->sgt;

 ret = sg_alloc_table(sgt, obj->sg->orig_nents, GFP_KERNEL);
 if (ret) {
  DRM_ERROR("failed to alloc sgt.\n");
  return ERR_PTR(-ENOMEM);
 }

 mutex_lock(&udl->gem_lock);

 rd = obj->sg->sgl;
 wr = sgt->sgl;
 for (i = 0; i < sgt->orig_nents; ++i) {
  sg_set_page(wr, sg_page(rd), rd->length, rd->offset);
  rd = sg_next(rd);
  wr = sg_next(wr);
 }

 if (dir != DMA_NONE) {
  nents = dma_map_sg(attach->dev, sgt->sgl, sgt->orig_nents, dir);
  if (!nents) {
   DRM_ERROR("failed to map sgl with iommu.\n");
   sg_free_table(sgt);
   sgt = ERR_PTR(-EIO);
   goto err_unlock;
  }
 }

 udl_attach->is_mapped = 1;
 udl_attach->dir = dir;
 attach->priv = udl_attach;

err_unlock:
 mutex_unlock(&udl->gem_lock);
 return sgt;
}
