
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct komeda_plane_state {struct drm_plane_state base; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct komeda_plane_state* kzalloc (int,int ) ;

__attribute__((used)) static struct drm_plane_state *
komeda_plane_atomic_duplicate_state(struct drm_plane *plane)
{
 struct komeda_plane_state *new;

 if (WARN_ON(!plane->state))
  return ((void*)0);

 new = kzalloc(sizeof(*new), GFP_KERNEL);
 if (!new)
  return ((void*)0);

 __drm_atomic_helper_plane_duplicate_state(plane, &new->base);

 return &new->base;
}
