
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_rcl_setup {int msaa_zs_write; int msaa_color_write; int zs_write; int color_write; int zs_read; int color_read; int member_0; } ;
struct vc4_exec_info {scalar_t__ bin_tiles_x; scalar_t__ bin_tiles_y; struct drm_vc4_submit_cl* args; } ;
struct drm_vc4_submit_cl {scalar_t__ bin_cl_size; scalar_t__ min_x_tile; scalar_t__ max_x_tile; scalar_t__ min_y_tile; scalar_t__ max_y_tile; int msaa_zs_write; int msaa_color_write; int zs_write; int zs_read; int color_read; int color_write; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,...) ;
 int EINVAL ;
 int vc4_create_rcl_bo (struct drm_device*,struct vc4_exec_info*,struct vc4_rcl_setup*) ;
 int vc4_rcl_msaa_surface_setup (struct vc4_exec_info*,int *,int *) ;
 int vc4_rcl_render_config_surface_setup (struct vc4_exec_info*,struct vc4_rcl_setup*,int *,int *) ;
 int vc4_rcl_surface_setup (struct vc4_exec_info*,int *,int *,int) ;

int vc4_get_rcl(struct drm_device *dev, struct vc4_exec_info *exec)
{
 struct vc4_rcl_setup setup = {0};
 struct drm_vc4_submit_cl *args = exec->args;
 bool has_bin = args->bin_cl_size != 0;
 int ret;

 if (args->min_x_tile > args->max_x_tile ||
     args->min_y_tile > args->max_y_tile) {
  DRM_DEBUG("Bad render tile set (%d,%d)-(%d,%d)\n",
     args->min_x_tile, args->min_y_tile,
     args->max_x_tile, args->max_y_tile);
  return -EINVAL;
 }

 if (has_bin &&
     (args->max_x_tile > exec->bin_tiles_x ||
      args->max_y_tile > exec->bin_tiles_y)) {
  DRM_DEBUG("Render tiles (%d,%d) outside of bin config "
     "(%d,%d)\n",
     args->max_x_tile, args->max_y_tile,
     exec->bin_tiles_x, exec->bin_tiles_y);
  return -EINVAL;
 }

 ret = vc4_rcl_render_config_surface_setup(exec, &setup,
        &setup.color_write,
        &args->color_write);
 if (ret)
  return ret;

 ret = vc4_rcl_surface_setup(exec, &setup.color_read, &args->color_read,
        0);
 if (ret)
  return ret;

 ret = vc4_rcl_surface_setup(exec, &setup.zs_read, &args->zs_read,
        0);
 if (ret)
  return ret;

 ret = vc4_rcl_surface_setup(exec, &setup.zs_write, &args->zs_write,
        1);
 if (ret)
  return ret;

 ret = vc4_rcl_msaa_surface_setup(exec, &setup.msaa_color_write,
      &args->msaa_color_write);
 if (ret)
  return ret;

 ret = vc4_rcl_msaa_surface_setup(exec, &setup.msaa_zs_write,
      &args->msaa_zs_write);
 if (ret)
  return ret;




 if (!setup.color_write && !setup.zs_write &&
     !setup.msaa_color_write && !setup.msaa_zs_write) {
  DRM_DEBUG("RCL requires color or Z/S write\n");
  return -EINVAL;
 }

 return vc4_create_rcl_bo(dev, exec, &setup);
}
