
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ipu_soc {int dummy; } ;
struct drm_format_info {int num_planes; } ;





 struct drm_format_info* drm_format_info (int ) ;

bool ipu_prg_format_supported(struct ipu_soc *ipu, uint32_t format,
         uint64_t modifier)
{
 const struct drm_format_info *info = drm_format_info(format);

 if (info->num_planes != 1)
  return 0;

 switch (modifier) {
 case 130:
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
