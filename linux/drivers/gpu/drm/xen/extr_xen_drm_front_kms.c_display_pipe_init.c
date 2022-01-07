
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xen_drm_front_drm_pipeline {int index; int conn; int pipe; int pflip_to_worker; int width; int height; struct xen_drm_front_drm_info* drm_info; } ;
struct xen_drm_front_drm_info {struct drm_device* drm_dev; } ;
struct xen_drm_front_cfg_connector {int width; int height; } ;
struct drm_device {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int display_funcs ;
 int drm_simple_display_pipe_init (struct drm_device*,int *,int *,int const*,int,int *,int *) ;
 int pflip_to_worker ;
 int * xen_drm_front_conn_get_formats (int*) ;
 int xen_drm_front_conn_init (struct xen_drm_front_drm_info*,int *) ;

__attribute__((used)) static int display_pipe_init(struct xen_drm_front_drm_info *drm_info,
        int index, struct xen_drm_front_cfg_connector *cfg,
        struct xen_drm_front_drm_pipeline *pipeline)
{
 struct drm_device *dev = drm_info->drm_dev;
 const u32 *formats;
 int format_count;
 int ret;

 pipeline->drm_info = drm_info;
 pipeline->index = index;
 pipeline->height = cfg->height;
 pipeline->width = cfg->width;

 INIT_DELAYED_WORK(&pipeline->pflip_to_worker, pflip_to_worker);

 ret = xen_drm_front_conn_init(drm_info, &pipeline->conn);
 if (ret)
  return ret;

 formats = xen_drm_front_conn_get_formats(&format_count);

 return drm_simple_display_pipe_init(dev, &pipeline->pipe,
         &display_funcs, formats,
         format_count, ((void*)0),
         &pipeline->conn);
}
