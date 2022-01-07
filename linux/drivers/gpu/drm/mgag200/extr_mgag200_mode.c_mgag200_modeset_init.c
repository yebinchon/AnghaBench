
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vram_base; } ;
struct TYPE_7__ {int mode_config_initialized; } ;
struct mga_device {TYPE_4__* dev; TYPE_1__ mc; TYPE_2__ mode_info; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_8__ {int fb_base; int max_height; int max_width; } ;
struct TYPE_9__ {TYPE_3__ mode_config; } ;


 int DRM_ERROR (char*) ;
 int MGAG200_MAX_FB_HEIGHT ;
 int MGAG200_MAX_FB_WIDTH ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int mga_crtc_init (struct mga_device*) ;
 struct drm_encoder* mga_encoder_init (TYPE_4__*) ;
 struct drm_connector* mga_vga_init (TYPE_4__*) ;

int mgag200_modeset_init(struct mga_device *mdev)
{
 struct drm_encoder *encoder;
 struct drm_connector *connector;

 mdev->mode_info.mode_config_initialized = 1;

 mdev->dev->mode_config.max_width = MGAG200_MAX_FB_WIDTH;
 mdev->dev->mode_config.max_height = MGAG200_MAX_FB_HEIGHT;

 mdev->dev->mode_config.fb_base = mdev->mc.vram_base;

 mga_crtc_init(mdev);

 encoder = mga_encoder_init(mdev->dev);
 if (!encoder) {
  DRM_ERROR("mga_encoder_init failed\n");
  return -1;
 }

 connector = mga_vga_init(mdev->dev);
 if (!connector) {
  DRM_ERROR("mga_vga_init failed\n");
  return -1;
 }

 drm_connector_attach_encoder(connector, encoder);

 return 0;
}
