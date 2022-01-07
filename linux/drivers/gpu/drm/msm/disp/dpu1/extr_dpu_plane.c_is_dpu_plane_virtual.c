
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {int dummy; } ;
struct TYPE_2__ {int is_virtual; } ;


 TYPE_1__* to_dpu_plane (struct drm_plane*) ;

bool is_dpu_plane_virtual(struct drm_plane *plane)
{
 return plane ? to_dpu_plane(plane)->is_virtual : 0;
}
