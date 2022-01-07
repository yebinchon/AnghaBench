
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int possible_crtcs; } ;
struct TYPE_2__ {int subpixel_order; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; TYPE_1__ display_info; } ;
struct amdgpu_device {int ddev; } ;


 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int DRM_MODE_ENCODER_VIRTUAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SubPixelHorizontalRGB ;
 int dce_virtual_connector_funcs ;
 int dce_virtual_connector_helper_funcs ;
 int dce_virtual_encoder_funcs ;
 int dce_virtual_encoder_helper_funcs ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int ,struct drm_connector*,int *,int ) ;
 int drm_connector_register (struct drm_connector*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (int ,struct drm_encoder*,int *,int ,int *) ;
 int kfree (struct drm_encoder*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int dce_virtual_connector_encoder_init(struct amdgpu_device *adev,
           int index)
{
 struct drm_encoder *encoder;
 struct drm_connector *connector;


 encoder = kzalloc(sizeof(struct drm_encoder), GFP_KERNEL);
 if (!encoder)
  return -ENOMEM;
 encoder->possible_crtcs = 1 << index;
 drm_encoder_init(adev->ddev, encoder, &dce_virtual_encoder_funcs,
    DRM_MODE_ENCODER_VIRTUAL, ((void*)0));
 drm_encoder_helper_add(encoder, &dce_virtual_encoder_helper_funcs);

 connector = kzalloc(sizeof(struct drm_connector), GFP_KERNEL);
 if (!connector) {
  kfree(encoder);
  return -ENOMEM;
 }


 drm_connector_init(adev->ddev, connector, &dce_virtual_connector_funcs,
      DRM_MODE_CONNECTOR_VIRTUAL);
 drm_connector_helper_add(connector, &dce_virtual_connector_helper_funcs);
 connector->display_info.subpixel_order = SubPixelHorizontalRGB;
 connector->interlace_allowed = 0;
 connector->doublescan_allowed = 0;
 drm_connector_register(connector);


 drm_connector_attach_encoder(connector, encoder);

 return 0;
}
