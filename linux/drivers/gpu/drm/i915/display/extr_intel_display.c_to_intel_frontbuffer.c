
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_frontbuffer {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {struct intel_frontbuffer* frontbuffer; } ;


 TYPE_1__* to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static struct intel_frontbuffer *
to_intel_frontbuffer(struct drm_framebuffer *fb)
{
 return fb ? to_intel_framebuffer(fb)->frontbuffer : ((void*)0);
}
