
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_info {int num_bus_formats; int* bus_formats; } ;
struct drm_connector {struct drm_display_info display_info; } ;


 int EINVAL ;



 struct drm_connector* sun4i_tcon_get_connector (struct drm_encoder const*) ;

__attribute__((used)) static int sun4i_tcon_get_pixel_depth(const struct drm_encoder *encoder)
{
 struct drm_connector *connector;
 struct drm_display_info *info;

 connector = sun4i_tcon_get_connector(encoder);
 if (!connector)
  return -EINVAL;

 info = &connector->display_info;
 if (info->num_bus_formats != 1)
  return -EINVAL;

 switch (info->bus_formats[0]) {
 case 130:
  return 18;

 case 129:
 case 128:
  return 24;
 }

 return -EINVAL;
}
