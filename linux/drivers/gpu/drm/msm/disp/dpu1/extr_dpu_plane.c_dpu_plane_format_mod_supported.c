
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct drm_plane {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ DRM_FORMAT_MOD_LINEAR ;
 scalar_t__ DRM_FORMAT_MOD_QCOM_COMPRESSED ;
 scalar_t__* qcom_compressed_supported_formats ;

__attribute__((used)) static bool dpu_plane_format_mod_supported(struct drm_plane *plane,
  uint32_t format, uint64_t modifier)
{
 if (modifier == DRM_FORMAT_MOD_LINEAR)
  return 1;

 if (modifier == DRM_FORMAT_MOD_QCOM_COMPRESSED) {
  int i;
  for (i = 0; i < ARRAY_SIZE(qcom_compressed_supported_formats); i++) {
   if (format == qcom_compressed_supported_formats[i])
    return 1;
  }
 }

 return 0;
}
