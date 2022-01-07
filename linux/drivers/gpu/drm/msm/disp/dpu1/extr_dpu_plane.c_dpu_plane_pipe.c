
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {int dummy; } ;
typedef enum dpu_sspp { ____Placeholder_dpu_sspp } dpu_sspp ;
struct TYPE_2__ {int pipe; } ;


 int SSPP_NONE ;
 TYPE_1__* to_dpu_plane (struct drm_plane*) ;

enum dpu_sspp dpu_plane_pipe(struct drm_plane *plane)
{
 return plane ? to_dpu_plane(plane)->pipe : SSPP_NONE;
}
