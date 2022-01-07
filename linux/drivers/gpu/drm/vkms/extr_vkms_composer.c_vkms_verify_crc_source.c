
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,char const*) ;
 int EINVAL ;
 scalar_t__ vkms_crc_parse_source (char const*,int*) ;

int vkms_verify_crc_source(struct drm_crtc *crtc, const char *src_name,
      size_t *values_cnt)
{
 bool enabled;

 if (vkms_crc_parse_source(src_name, &enabled) < 0) {
  DRM_DEBUG_DRIVER("unknown source %s\n", src_name);
  return -EINVAL;
 }

 *values_cnt = 1;

 return 0;
}
