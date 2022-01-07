
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_rect {unsigned int x2; unsigned int x1; unsigned int y2; unsigned int y1; } ;
struct drm_framebuffer {int * pitches; TYPE_1__* format; } ;
struct TYPE_2__ {unsigned int* cpp; } ;


 int clip_offset (struct drm_rect*,int ,unsigned int) ;
 int memcpy (void*,void*,size_t) ;

void drm_fb_memcpy(void *dst, void *vaddr, struct drm_framebuffer *fb,
     struct drm_rect *clip)
{
 unsigned int cpp = fb->format->cpp[0];
 size_t len = (clip->x2 - clip->x1) * cpp;
 unsigned int y, lines = clip->y2 - clip->y1;

 vaddr += clip_offset(clip, fb->pitches[0], cpp);
 for (y = 0; y < lines; y++) {
  memcpy(dst, vaddr, len);
  vaddr += fb->pitches[0];
  dst += len;
 }
}
