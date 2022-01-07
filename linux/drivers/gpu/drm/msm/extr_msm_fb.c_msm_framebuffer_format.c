
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_framebuffer {struct msm_format const* format; } ;
struct msm_format {int dummy; } ;
struct drm_framebuffer {int dummy; } ;


 struct msm_framebuffer* to_msm_framebuffer (struct drm_framebuffer*) ;

const struct msm_format *msm_framebuffer_format(struct drm_framebuffer *fb)
{
 struct msm_framebuffer *msm_fb = to_msm_framebuffer(fb);
 return msm_fb->format;
}
