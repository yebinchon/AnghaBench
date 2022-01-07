
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dev; } ;
struct drm_writeback_connector {TYPE_3__ base; } ;
struct dma_fence {int dummy; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {char const* name; } ;


 struct drm_writeback_connector* fence_to_wb_connector (struct dma_fence*) ;

__attribute__((used)) static const char *drm_writeback_fence_get_driver_name(struct dma_fence *fence)
{
 struct drm_writeback_connector *wb_connector =
  fence_to_wb_connector(fence);

 return wb_connector->base.dev->driver->name;
}
