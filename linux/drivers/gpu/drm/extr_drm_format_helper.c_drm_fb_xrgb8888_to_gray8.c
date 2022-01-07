
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct drm_rect {int x2; int x1; unsigned int y1; unsigned int y2; } ;
struct drm_framebuffer {unsigned int* pitches; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ format; } ;


 scalar_t__ DRM_FORMAT_XRGB8888 ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int kfree (void*) ;
 void* kmalloc (unsigned int,int ) ;
 int memcpy (void*,int*,unsigned int) ;

void drm_fb_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
          struct drm_rect *clip)
{
 unsigned int len = (clip->x2 - clip->x1) * sizeof(u32);
 unsigned int x, y;
 void *buf;
 u32 *src;

 if (WARN_ON(fb->format->format != DRM_FORMAT_XRGB8888))
  return;




 buf = kmalloc(len, GFP_KERNEL);
 if (!buf)
  return;

 for (y = clip->y1; y < clip->y2; y++) {
  src = vaddr + (y * fb->pitches[0]);
  src += clip->x1;
  memcpy(buf, src, len);
  src = buf;
  for (x = clip->x1; x < clip->x2; x++) {
   u8 r = (*src & 0x00ff0000) >> 16;
   u8 g = (*src & 0x0000ff00) >> 8;
   u8 b = *src & 0x000000ff;


   *dst++ = (3 * r + 6 * g + b) / 10;
   src++;
  }
 }

 kfree(buf);
}
