
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_plane* plane; } ;
struct vkms_plane_state {TYPE_1__ base; } ;
struct drm_plane {TYPE_1__* state; } ;


 int DRM_ERROR (char*) ;
 int GFP_KERNEL ;
 struct vkms_plane_state* kzalloc (int,int ) ;
 int vkms_plane_destroy_state (struct drm_plane*,TYPE_1__*) ;

__attribute__((used)) static void vkms_plane_reset(struct drm_plane *plane)
{
 struct vkms_plane_state *vkms_state;

 if (plane->state)
  vkms_plane_destroy_state(plane, plane->state);

 vkms_state = kzalloc(sizeof(*vkms_state), GFP_KERNEL);
 if (!vkms_state) {
  DRM_ERROR("Cannot allocate vkms_plane_state\n");
  return;
 }

 plane->state = &vkms_state->base;
 plane->state->plane = plane;
}
