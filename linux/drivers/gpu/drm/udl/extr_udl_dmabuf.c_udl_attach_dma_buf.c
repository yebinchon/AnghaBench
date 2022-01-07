
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udl_drm_dmabuf_attachment {int dir; } ;
struct dma_buf_attachment {struct udl_drm_dmabuf_attachment* priv; TYPE_1__* dmabuf; int dev; } ;
struct dma_buf {int dummy; } ;
struct TYPE_2__ {int size; } ;


 int DMA_NONE ;
 int DRM_DEBUG_PRIME (char*,int ,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_name (int ) ;
 struct udl_drm_dmabuf_attachment* kzalloc (int,int ) ;

__attribute__((used)) static int udl_attach_dma_buf(struct dma_buf *dmabuf,
         struct dma_buf_attachment *attach)
{
 struct udl_drm_dmabuf_attachment *udl_attach;

 DRM_DEBUG_PRIME("[DEV:%s] size:%zd\n", dev_name(attach->dev),
   attach->dmabuf->size);

 udl_attach = kzalloc(sizeof(*udl_attach), GFP_KERNEL);
 if (!udl_attach)
  return -ENOMEM;

 udl_attach->dir = DMA_NONE;
 attach->priv = udl_attach;

 return 0;
}
