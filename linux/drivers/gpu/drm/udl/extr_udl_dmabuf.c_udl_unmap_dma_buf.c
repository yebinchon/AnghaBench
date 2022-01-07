
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int size; } ;


 int DRM_DEBUG_PRIME (char*,int ,int ,int) ;
 int dev_name (int ) ;

__attribute__((used)) static void udl_unmap_dma_buf(struct dma_buf_attachment *attach,
         struct sg_table *sgt,
         enum dma_data_direction dir)
{

 DRM_DEBUG_PRIME("[DEV:%s] size:%zd dir:%d\n", dev_name(attach->dev),
   attach->dmabuf->size, dir);
}
