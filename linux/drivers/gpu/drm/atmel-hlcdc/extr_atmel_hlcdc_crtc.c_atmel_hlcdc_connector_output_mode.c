
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_info {int num_bus_formats; int* bus_formats; } ;
struct drm_connector_state {struct drm_encoder* best_encoder; struct drm_connector* connector; } ;
struct drm_connector {struct drm_encoder* encoder; struct drm_display_info display_info; } ;


 int ATMEL_HLCDC_RGB444_OUTPUT ;
 int ATMEL_HLCDC_RGB565_OUTPUT ;
 int ATMEL_HLCDC_RGB666_OUTPUT ;
 int ATMEL_HLCDC_RGB888_OUTPUT ;
 int EINVAL ;




 int atmel_hlcdc_encoder_get_bus_fmt (struct drm_encoder*) ;

__attribute__((used)) static int atmel_hlcdc_connector_output_mode(struct drm_connector_state *state)
{
 struct drm_connector *connector = state->connector;
 struct drm_display_info *info = &connector->display_info;
 struct drm_encoder *encoder;
 unsigned int supported_fmts = 0;
 int j;

 encoder = state->best_encoder;
 if (!encoder)
  encoder = connector->encoder;

 switch (atmel_hlcdc_encoder_get_bus_fmt(encoder)) {
 case 0:
  break;
 case 131:
  return ATMEL_HLCDC_RGB444_OUTPUT;
 case 130:
  return ATMEL_HLCDC_RGB565_OUTPUT;
 case 129:
  return ATMEL_HLCDC_RGB666_OUTPUT;
 case 128:
  return ATMEL_HLCDC_RGB888_OUTPUT;
 default:
  return -EINVAL;
 }

 for (j = 0; j < info->num_bus_formats; j++) {
  switch (info->bus_formats[j]) {
  case 131:
   supported_fmts |= ATMEL_HLCDC_RGB444_OUTPUT;
   break;
  case 130:
   supported_fmts |= ATMEL_HLCDC_RGB565_OUTPUT;
   break;
  case 129:
   supported_fmts |= ATMEL_HLCDC_RGB666_OUTPUT;
   break;
  case 128:
   supported_fmts |= ATMEL_HLCDC_RGB888_OUTPUT;
   break;
  default:
   break;
  }
 }

 return supported_fmts;
}
