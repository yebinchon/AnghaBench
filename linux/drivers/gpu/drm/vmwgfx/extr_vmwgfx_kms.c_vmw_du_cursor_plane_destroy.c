
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_private; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int vmw_cursor_update_position (int ,int,int ,int ) ;

void vmw_du_cursor_plane_destroy(struct drm_plane *plane)
{
 vmw_cursor_update_position(plane->dev->dev_private, 0, 0, 0);

 drm_plane_cleanup(plane);
}
