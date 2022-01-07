
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int* modifier; int pixel_format; } ;
struct drm_format_info {int dummy; } ;


 int ARRAY_SIZE (int ) ;


 int ccs_formats ;
 struct drm_format_info const* lookup_format_info (int ,int ,int ) ;

__attribute__((used)) static const struct drm_format_info *
intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
{
 switch (cmd->modifier[0]) {
 case 129:
 case 128:
  return lookup_format_info(ccs_formats,
       ARRAY_SIZE(ccs_formats),
       cmd->pixel_format);
 default:
  return ((void*)0);
 }
}
