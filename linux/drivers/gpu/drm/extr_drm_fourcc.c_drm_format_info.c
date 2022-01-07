
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_format_info {int dummy; } ;


 int WARN_ON (int) ;
 struct drm_format_info* __drm_format_info (int ) ;

const struct drm_format_info *drm_format_info(u32 format)
{
 const struct drm_format_info *info;

 info = __drm_format_info(format);
 WARN_ON(!info);
 return info;
}
