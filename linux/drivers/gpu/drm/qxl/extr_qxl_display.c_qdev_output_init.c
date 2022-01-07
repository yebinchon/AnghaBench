
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int possible_crtcs; } ;
struct drm_connector {int base; int polled; } ;
struct qxl_output {int index; struct drm_encoder enc; struct drm_connector base; } ;
struct qxl_device {int hotplug_mode_update_property; } ;
struct TYPE_2__ {int suggested_y_property; int suggested_x_property; } ;
struct drm_device {TYPE_1__ mode_config; struct qxl_device* dev_private; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int DRM_MODE_ENCODER_VIRTUAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_object_attach_property (int *,int ,int ) ;
 struct qxl_output* kzalloc (int,int ) ;
 int qxl_connector_funcs ;
 int qxl_connector_helper_funcs ;
 int qxl_enc_funcs ;
 int qxl_enc_helper_funcs ;

__attribute__((used)) static int qdev_output_init(struct drm_device *dev, int num_output)
{
 struct qxl_device *qdev = dev->dev_private;
 struct qxl_output *qxl_output;
 struct drm_connector *connector;
 struct drm_encoder *encoder;

 qxl_output = kzalloc(sizeof(struct qxl_output), GFP_KERNEL);
 if (!qxl_output)
  return -ENOMEM;

 qxl_output->index = num_output;

 connector = &qxl_output->base;
 encoder = &qxl_output->enc;
 drm_connector_init(dev, &qxl_output->base,
      &qxl_connector_funcs, DRM_MODE_CONNECTOR_VIRTUAL);

 drm_encoder_init(dev, &qxl_output->enc, &qxl_enc_funcs,
    DRM_MODE_ENCODER_VIRTUAL, ((void*)0));


 connector->polled = DRM_CONNECTOR_POLL_HPD;
 encoder->possible_crtcs = 1 << num_output;
 drm_connector_attach_encoder(&qxl_output->base,
       &qxl_output->enc);
 drm_encoder_helper_add(encoder, &qxl_enc_helper_funcs);
 drm_connector_helper_add(connector, &qxl_connector_helper_funcs);

 drm_object_attach_property(&connector->base,
       qdev->hotplug_mode_update_property, 0);
 drm_object_attach_property(&connector->base,
       dev->mode_config.suggested_x_property, 0);
 drm_object_attach_property(&connector->base,
       dev->mode_config.suggested_y_property, 0);
 return 0;
}
