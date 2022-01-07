
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {int (* get_bitmask_sspp ) (struct dpu_hw_ctl*,int ) ;} ;
struct dpu_hw_ctl {TYPE_1__ ops; } ;


 int dpu_plane_pipe (struct drm_plane*) ;
 int stub1 (struct dpu_hw_ctl*,int ) ;

void dpu_plane_get_ctl_flush(struct drm_plane *plane, struct dpu_hw_ctl *ctl,
  u32 *flush_sspp)
{
 *flush_sspp = ctl->ops.get_bitmask_sspp(ctl, dpu_plane_pipe(plane));
}
