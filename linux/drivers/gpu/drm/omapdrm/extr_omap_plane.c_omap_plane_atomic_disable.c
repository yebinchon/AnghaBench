
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_plane {int id; } ;
struct omap_drm_private {int dispc; TYPE_1__* dispc_ops; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {scalar_t__ type; TYPE_3__* state; TYPE_2__* dev; } ;
struct TYPE_6__ {int zpos; int rotation; } ;
struct TYPE_5__ {struct omap_drm_private* dev_private; } ;
struct TYPE_4__ {int (* ovl_enable ) (int ,int ,int) ;} ;


 int DRM_MODE_ROTATE_0 ;
 scalar_t__ DRM_PLANE_TYPE_PRIMARY ;
 int stub1 (int ,int ,int) ;
 struct omap_plane* to_omap_plane (struct drm_plane*) ;

__attribute__((used)) static void omap_plane_atomic_disable(struct drm_plane *plane,
          struct drm_plane_state *old_state)
{
 struct omap_drm_private *priv = plane->dev->dev_private;
 struct omap_plane *omap_plane = to_omap_plane(plane);

 plane->state->rotation = DRM_MODE_ROTATE_0;
 plane->state->zpos = plane->type == DRM_PLANE_TYPE_PRIMARY
      ? 0 : omap_plane->id;

 priv->dispc_ops->ovl_enable(priv->dispc, omap_plane->id, 0);
}
