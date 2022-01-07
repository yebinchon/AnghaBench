
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_framebuffer {int frontbuffer; } ;
struct drm_framebuffer {int dummy; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int intel_frontbuffer_put (int ) ;
 int kfree (struct intel_framebuffer*) ;
 struct intel_framebuffer* to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
{
 struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);

 drm_framebuffer_cleanup(fb);
 intel_frontbuffer_put(intel_fb->frontbuffer);

 kfree(intel_fb);
}
