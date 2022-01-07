
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct sti_plane {TYPE_2__ drm_plane; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 int sti_plane_attach_zorder_property (TYPE_2__*,int) ;
 int sti_plane_to_str (struct sti_plane*) ;

void sti_plane_init_property(struct sti_plane *plane,
        enum drm_plane_type type)
{
 sti_plane_attach_zorder_property(&plane->drm_plane, type);

 DRM_DEBUG_DRIVER("drm plane:%d mapped to %s\n",
    plane->drm_plane.base.id, sti_plane_to_str(plane));
}
