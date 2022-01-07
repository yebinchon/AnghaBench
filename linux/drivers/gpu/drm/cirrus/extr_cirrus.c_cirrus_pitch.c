
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int width; int* pitches; } ;


 int cirrus_convert_to (struct drm_framebuffer*) ;

__attribute__((used)) static int cirrus_pitch(struct drm_framebuffer *fb)
{
 int convert_cpp = cirrus_convert_to(fb);

 if (convert_cpp)
  return convert_cpp * fb->width;
 return fb->pitches[0];
}
