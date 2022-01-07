
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct drm_plane {int state; } ;
struct armada_plane_state {struct drm_plane_state base; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct armada_plane_state* kmemdup (int ,int,int ) ;

struct drm_plane_state *armada_plane_duplicate_state(struct drm_plane *plane)
{
 struct armada_plane_state *st;

 if (WARN_ON(!plane->state))
  return ((void*)0);

 st = kmemdup(plane->state, sizeof(*st), GFP_KERNEL);
 if (st)
  __drm_atomic_helper_plane_duplicate_state(plane, &st->base);

 return &st->base;
}
