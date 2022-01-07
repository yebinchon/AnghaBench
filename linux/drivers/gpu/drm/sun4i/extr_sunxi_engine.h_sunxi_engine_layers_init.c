
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_engine {TYPE_1__* ops; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_plane** (* layers_init ) (struct drm_device*,struct sunxi_engine*) ;} ;


 int ENOSYS ;
 struct drm_plane** ERR_PTR (int ) ;
 struct drm_plane** stub1 (struct drm_device*,struct sunxi_engine*) ;

__attribute__((used)) static inline struct drm_plane **
sunxi_engine_layers_init(struct drm_device *drm, struct sunxi_engine *engine)
{
 if (engine->ops && engine->ops->layers_init)
  return engine->ops->layers_init(drm, engine);
 return ERR_PTR(-ENOSYS);
}
