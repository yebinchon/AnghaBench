
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_writeback_connector {char const* timeline_name; } ;
struct dma_fence {int dummy; } ;


 struct drm_writeback_connector* fence_to_wb_connector (struct dma_fence*) ;

__attribute__((used)) static const char *
drm_writeback_fence_get_timeline_name(struct dma_fence *fence)
{
 struct drm_writeback_connector *wb_connector =
  fence_to_wb_connector(fence);

 return wb_connector->timeline_name;
}
