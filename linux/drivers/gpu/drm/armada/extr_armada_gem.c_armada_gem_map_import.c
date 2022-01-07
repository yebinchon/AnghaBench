
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; int import_attach; } ;
struct armada_gem_object {int mapped; TYPE_2__* sgt; int dev_addr; TYPE_1__ obj; } ;
struct TYPE_6__ {int nents; int sgl; } ;


 int DMA_TO_DEVICE ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 TYPE_2__* dma_buf_map_attachment (int ,int ) ;
 int sg_dma_address (int ) ;
 scalar_t__ sg_dma_len (int ) ;

int armada_gem_map_import(struct armada_gem_object *dobj)
{
 int ret;

 dobj->sgt = dma_buf_map_attachment(dobj->obj.import_attach,
        DMA_TO_DEVICE);
 if (IS_ERR(dobj->sgt)) {
  ret = PTR_ERR(dobj->sgt);
  dobj->sgt = ((void*)0);
  DRM_ERROR("dma_buf_map_attachment() error: %d\n", ret);
  return ret;
 }
 if (dobj->sgt->nents > 1) {
  DRM_ERROR("dma_buf_map_attachment() returned an (unsupported) scattered list\n");
  return -EINVAL;
 }
 if (sg_dma_len(dobj->sgt->sgl) < dobj->obj.size) {
  DRM_ERROR("dma_buf_map_attachment() returned a small buffer\n");
  return -EINVAL;
 }
 dobj->dev_addr = sg_dma_address(dobj->sgt->sgl);
 dobj->mapped = 1;
 return 0;
}
