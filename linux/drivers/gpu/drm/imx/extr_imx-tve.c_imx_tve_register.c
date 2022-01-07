
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_tve {scalar_t__ mode; int encoder; int connector; int ddc; TYPE_1__* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_ENCODER_DAC ;
 int DRM_MODE_ENCODER_TVDAC ;
 scalar_t__ TVE_MODE_VGA ;
 int drm_connector_attach_encoder (int *,int *) ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_connector_init_with_ddc (struct drm_device*,int *,int *,int ,int ) ;
 int drm_encoder_helper_add (int *,int *) ;
 int drm_encoder_init (struct drm_device*,int *,int *,int,int *) ;
 int imx_drm_encoder_parse_of (struct drm_device*,int *,int ) ;
 int imx_tve_connector_funcs ;
 int imx_tve_connector_helper_funcs ;
 int imx_tve_encoder_funcs ;
 int imx_tve_encoder_helper_funcs ;

__attribute__((used)) static int imx_tve_register(struct drm_device *drm, struct imx_tve *tve)
{
 int encoder_type;
 int ret;

 encoder_type = tve->mode == TVE_MODE_VGA ?
    DRM_MODE_ENCODER_DAC : DRM_MODE_ENCODER_TVDAC;

 ret = imx_drm_encoder_parse_of(drm, &tve->encoder, tve->dev->of_node);
 if (ret)
  return ret;

 drm_encoder_helper_add(&tve->encoder, &imx_tve_encoder_helper_funcs);
 drm_encoder_init(drm, &tve->encoder, &imx_tve_encoder_funcs,
    encoder_type, ((void*)0));

 drm_connector_helper_add(&tve->connector,
   &imx_tve_connector_helper_funcs);
 drm_connector_init_with_ddc(drm, &tve->connector,
        &imx_tve_connector_funcs,
        DRM_MODE_CONNECTOR_VGA,
        tve->ddc);

 drm_connector_attach_encoder(&tve->connector, &tve->encoder);

 return 0;
}
