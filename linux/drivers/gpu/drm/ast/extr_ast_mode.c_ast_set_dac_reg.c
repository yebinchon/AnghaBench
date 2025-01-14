
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_framebuffer {TYPE_2__* format; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {TYPE_1__* primary; } ;
struct ast_vbios_mode_info {int dummy; } ;
struct TYPE_4__ {int* cpp; } ;
struct TYPE_3__ {struct drm_framebuffer* fb; } ;



__attribute__((used)) static bool ast_set_dac_reg(struct drm_crtc *crtc, struct drm_display_mode *mode,
       struct ast_vbios_mode_info *vbios_mode)
{
 const struct drm_framebuffer *fb = crtc->primary->fb;

 switch (fb->format->cpp[0] * 8) {
 case 8:
  break;
 default:
  return 0;
 }
 return 1;
}
