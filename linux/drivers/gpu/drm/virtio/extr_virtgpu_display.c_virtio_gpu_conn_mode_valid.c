
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct virtio_gpu_output {TYPE_2__ info; } ;
struct drm_display_mode {int type; int hdisplay; int vdisplay; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_DEBUG (char*,int,int) ;
 int DRM_MODE_TYPE_PREFERRED ;
 int MODE_BAD ;
 int MODE_OK ;
 int XRES_DEF ;
 int YRES_DEF ;
 struct virtio_gpu_output* drm_connector_to_virtio_gpu_output (struct drm_connector*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static enum drm_mode_status virtio_gpu_conn_mode_valid(struct drm_connector *connector,
          struct drm_display_mode *mode)
{
 struct virtio_gpu_output *output =
  drm_connector_to_virtio_gpu_output(connector);
 int width, height;

 width = le32_to_cpu(output->info.r.width);
 height = le32_to_cpu(output->info.r.height);

 if (!(mode->type & DRM_MODE_TYPE_PREFERRED))
  return MODE_OK;
 if (mode->hdisplay == XRES_DEF && mode->vdisplay == YRES_DEF)
  return MODE_OK;
 if (mode->hdisplay <= width && mode->hdisplay >= width - 16 &&
     mode->vdisplay <= height && mode->vdisplay >= height - 16)
  return MODE_OK;

 DRM_DEBUG("del mode: %dx%d\n", mode->hdisplay, mode->vdisplay);
 return MODE_BAD;
}
