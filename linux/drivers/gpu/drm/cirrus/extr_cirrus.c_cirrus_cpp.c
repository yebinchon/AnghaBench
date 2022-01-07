
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_2__ {int* cpp; } ;


 int cirrus_convert_to (struct drm_framebuffer*) ;

__attribute__((used)) static int cirrus_cpp(struct drm_framebuffer *fb)
{
 int convert_cpp = cirrus_convert_to(fb);

 if (convert_cpp)
  return convert_cpp;
 return fb->format->cpp[0];
}
