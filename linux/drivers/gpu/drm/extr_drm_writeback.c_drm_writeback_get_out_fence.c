
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ connector_type; } ;
struct drm_writeback_connector {int fence_seqno; int fence_context; int fence_lock; TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;


 scalar_t__ DRM_MODE_CONNECTOR_WRITEBACK ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int ) ;
 int drm_writeback_fence_ops ;
 struct dma_fence* kzalloc (int,int ) ;

struct dma_fence *
drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector)
{
 struct dma_fence *fence;

 if (WARN_ON(wb_connector->base.connector_type !=
      DRM_MODE_CONNECTOR_WRITEBACK))
  return ((void*)0);

 fence = kzalloc(sizeof(*fence), GFP_KERNEL);
 if (!fence)
  return ((void*)0);

 dma_fence_init(fence, &drm_writeback_fence_ops,
         &wb_connector->fence_lock, wb_connector->fence_context,
         ++wb_connector->fence_seqno);

 return fence;
}
