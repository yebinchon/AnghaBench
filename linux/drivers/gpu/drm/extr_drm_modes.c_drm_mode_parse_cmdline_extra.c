
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int connector_type; } ;
struct drm_cmdline_mode {int interlace; int margins; void* force; } ;


 void* DRM_FORCE_OFF ;
 void* DRM_FORCE_ON ;
 void* DRM_FORCE_ON_DIGITAL ;
 void* DRM_FORCE_UNSPECIFIED ;
 int DRM_MODE_CONNECTOR_DVII ;
 int DRM_MODE_CONNECTOR_HDMIB ;
 int EINVAL ;

__attribute__((used)) static int drm_mode_parse_cmdline_extra(const char *str, int length,
     bool freestanding,
     const struct drm_connector *connector,
     struct drm_cmdline_mode *mode)
{
 int i;

 for (i = 0; i < length; i++) {
  switch (str[i]) {
  case 'i':
   if (freestanding)
    return -EINVAL;

   mode->interlace = 1;
   break;
  case 'm':
   if (freestanding)
    return -EINVAL;

   mode->margins = 1;
   break;
  case 'D':
   if (mode->force != DRM_FORCE_UNSPECIFIED)
    return -EINVAL;

   if ((connector->connector_type != DRM_MODE_CONNECTOR_DVII) &&
       (connector->connector_type != DRM_MODE_CONNECTOR_HDMIB))
    mode->force = DRM_FORCE_ON;
   else
    mode->force = DRM_FORCE_ON_DIGITAL;
   break;
  case 'd':
   if (mode->force != DRM_FORCE_UNSPECIFIED)
    return -EINVAL;

   mode->force = DRM_FORCE_OFF;
   break;
  case 'e':
   if (mode->force != DRM_FORCE_UNSPECIFIED)
    return -EINVAL;

   mode->force = DRM_FORCE_ON;
   break;
  default:
   return -EINVAL;
  }
 }

 return 0;
}
