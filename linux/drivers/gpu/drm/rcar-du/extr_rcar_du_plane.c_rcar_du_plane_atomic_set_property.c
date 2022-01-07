
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct rcar_du_plane_state {int colorkey; } ;
struct TYPE_5__ {struct drm_property* colorkey; } ;
struct rcar_du_device {TYPE_2__ props; } ;
struct drm_property {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct TYPE_6__ {TYPE_1__* group; } ;
struct TYPE_4__ {struct rcar_du_device* dev; } ;


 int EINVAL ;
 TYPE_3__* to_rcar_plane (struct drm_plane*) ;
 struct rcar_du_plane_state* to_rcar_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static int rcar_du_plane_atomic_set_property(struct drm_plane *plane,
          struct drm_plane_state *state,
          struct drm_property *property,
          uint64_t val)
{
 struct rcar_du_plane_state *rstate = to_rcar_plane_state(state);
 struct rcar_du_device *rcdu = to_rcar_plane(plane)->group->dev;

 if (property == rcdu->props.colorkey)
  rstate->colorkey = val;
 else
  return -EINVAL;

 return 0;
}
