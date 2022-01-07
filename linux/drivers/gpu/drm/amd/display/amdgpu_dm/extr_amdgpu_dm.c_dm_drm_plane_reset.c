
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {scalar_t__ state; TYPE_1__* funcs; } ;
struct dm_plane_state {int base; } ;
struct TYPE_2__ {int (* atomic_destroy_state ) (struct drm_plane*,scalar_t__) ;} ;


 int GFP_KERNEL ;
 int WARN_ON (int ) ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,int *) ;
 struct dm_plane_state* kzalloc (int,int ) ;
 int stub1 (struct drm_plane*,scalar_t__) ;

__attribute__((used)) static void dm_drm_plane_reset(struct drm_plane *plane)
{
 struct dm_plane_state *amdgpu_state = ((void*)0);

 if (plane->state)
  plane->funcs->atomic_destroy_state(plane, plane->state);

 amdgpu_state = kzalloc(sizeof(*amdgpu_state), GFP_KERNEL);
 WARN_ON(amdgpu_state == ((void*)0));

 if (amdgpu_state)
  __drm_atomic_helper_plane_reset(plane, &amdgpu_state->base);
}
