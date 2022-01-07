
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {int vdisplay; int hdisplay; } ;
struct TYPE_9__ {int plane; } ;
struct TYPE_6__ {int command; } ;
struct TYPE_7__ {int max_height; int min_height; int max_width; int min_width; int * funcs; } ;
struct drm_device {TYPE_2__ mode_config; int dev; } ;
struct mipi_dbi_dev {unsigned int rotation; TYPE_3__ mode; TYPE_4__ pipe; int connector; int tx_buf; TYPE_1__ dbi; struct drm_device drm; } ;
struct drm_simple_display_pipe_funcs {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int DRM_DEBUG_KMS (char*,unsigned int) ;
 int DRM_ERROR (char*,unsigned int) ;


 int DRM_MODE_CONNECTOR_SPI ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kmalloc (int ,size_t,int ) ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_connector_init (struct drm_device*,int *,int *,int ) ;
 int drm_mode_copy (TYPE_3__*,struct drm_display_mode const*) ;
 int drm_plane_enable_fb_damage_clips (int *) ;
 int drm_simple_display_pipe_init (struct drm_device*,TYPE_4__*,struct drm_simple_display_pipe_funcs const*,int const*,unsigned int,int const*,int *) ;
 int mipi_dbi_connector_funcs ;
 int mipi_dbi_connector_hfuncs ;
 int mipi_dbi_mode_config_funcs ;
 int mipi_dbi_rotate_mode (TYPE_3__*,unsigned int) ;

int mipi_dbi_dev_init_with_formats(struct mipi_dbi_dev *dbidev,
       const struct drm_simple_display_pipe_funcs *funcs,
       const uint32_t *formats, unsigned int format_count,
       const struct drm_display_mode *mode,
       unsigned int rotation, size_t tx_buf_size)
{
 static const uint64_t modifiers[] = {
  128,
  129
 };
 struct drm_device *drm = &dbidev->drm;
 int ret;

 if (!dbidev->dbi.command)
  return -EINVAL;

 dbidev->tx_buf = devm_kmalloc(drm->dev, tx_buf_size, GFP_KERNEL);
 if (!dbidev->tx_buf)
  return -ENOMEM;

 drm_mode_copy(&dbidev->mode, mode);
 ret = mipi_dbi_rotate_mode(&dbidev->mode, rotation);
 if (ret) {
  DRM_ERROR("Illegal rotation value %u\n", rotation);
  return -EINVAL;
 }

 drm_connector_helper_add(&dbidev->connector, &mipi_dbi_connector_hfuncs);
 ret = drm_connector_init(drm, &dbidev->connector, &mipi_dbi_connector_funcs,
     DRM_MODE_CONNECTOR_SPI);
 if (ret)
  return ret;

 ret = drm_simple_display_pipe_init(drm, &dbidev->pipe, funcs, formats, format_count,
        modifiers, &dbidev->connector);
 if (ret)
  return ret;

 drm_plane_enable_fb_damage_clips(&dbidev->pipe.plane);

 drm->mode_config.funcs = &mipi_dbi_mode_config_funcs;
 drm->mode_config.min_width = dbidev->mode.hdisplay;
 drm->mode_config.max_width = dbidev->mode.hdisplay;
 drm->mode_config.min_height = dbidev->mode.vdisplay;
 drm->mode_config.max_height = dbidev->mode.vdisplay;
 dbidev->rotation = rotation;

 DRM_DEBUG_KMS("rotation = %u\n", rotation);

 return 0;
}
