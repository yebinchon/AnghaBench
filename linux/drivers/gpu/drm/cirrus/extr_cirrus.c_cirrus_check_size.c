
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;


 int CIRRUS_MAX_PITCH ;
 int CIRRUS_VRAM_SIZE ;
 int EINVAL ;
 int cirrus_pitch (struct drm_framebuffer*) ;

__attribute__((used)) static int cirrus_check_size(int width, int height,
        struct drm_framebuffer *fb)
{
 int pitch = width * 2;

 if (fb)
  pitch = cirrus_pitch(fb);

 if (pitch > CIRRUS_MAX_PITCH)
  return -EINVAL;
 if (pitch * height > CIRRUS_VRAM_SIZE)
  return -EINVAL;
 return 0;
}
