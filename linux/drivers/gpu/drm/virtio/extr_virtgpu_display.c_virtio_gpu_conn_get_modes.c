
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct virtio_gpu_output {TYPE_2__ info; scalar_t__ edid; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int dev; } ;


 int DRM_DEBUG (char*,int,int) ;
 int DRM_MODE_TYPE_PREFERRED ;
 int XRES_DEF ;
 int XRES_MAX ;
 int YRES_DEF ;
 int YRES_MAX ;
 int drm_add_edid_modes (struct drm_connector*,scalar_t__) ;
 int drm_add_modes_noedid (struct drm_connector*,int ,int ) ;
 struct virtio_gpu_output* drm_connector_to_virtio_gpu_output (struct drm_connector*) ;
 struct drm_display_mode* drm_cvt_mode (int ,int,int,int,int,int,int) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_set_preferred_mode (struct drm_connector*,int,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int virtio_gpu_conn_get_modes(struct drm_connector *connector)
{
 struct virtio_gpu_output *output =
  drm_connector_to_virtio_gpu_output(connector);
 struct drm_display_mode *mode = ((void*)0);
 int count, width, height;

 if (output->edid) {
  count = drm_add_edid_modes(connector, output->edid);
  if (count)
   return count;
 }

 width = le32_to_cpu(output->info.r.width);
 height = le32_to_cpu(output->info.r.height);
 count = drm_add_modes_noedid(connector, XRES_MAX, YRES_MAX);

 if (width == 0 || height == 0) {
  width = XRES_DEF;
  height = YRES_DEF;
  drm_set_preferred_mode(connector, XRES_DEF, YRES_DEF);
 } else {
  DRM_DEBUG("add mode: %dx%d\n", width, height);
  mode = drm_cvt_mode(connector->dev, width, height, 60,
        0, 0, 0);
  mode->type |= DRM_MODE_TYPE_PREFERRED;
  drm_mode_probed_add(connector, mode);
  count++;
 }

 return count;
}
