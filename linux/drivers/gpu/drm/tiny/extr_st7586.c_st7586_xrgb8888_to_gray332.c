
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_rect {size_t x2; size_t x1; size_t y2; size_t y1; } ;
struct drm_framebuffer {int dummy; } ;


 int GFP_KERNEL ;
 int drm_fb_xrgb8888_to_gray8 (int*,void*,struct drm_framebuffer*,struct drm_rect*) ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;
 int* st7586_lookup ;

__attribute__((used)) static void st7586_xrgb8888_to_gray332(u8 *dst, void *vaddr,
           struct drm_framebuffer *fb,
           struct drm_rect *clip)
{
 size_t len = (clip->x2 - clip->x1) * (clip->y2 - clip->y1);
 unsigned int x, y;
 u8 *src, *buf, val;

 buf = kmalloc(len, GFP_KERNEL);
 if (!buf)
  return;

 drm_fb_xrgb8888_to_gray8(buf, vaddr, fb, clip);
 src = buf;

 for (y = clip->y1; y < clip->y2; y++) {
  for (x = clip->x1; x < clip->x2; x += 3) {
   val = st7586_lookup[*src++ >> 6] << 5;
   val |= st7586_lookup[*src++ >> 6] << 2;
   val |= st7586_lookup[*src++ >> 6] >> 1;
   *dst++ = val;
  }
 }

 kfree(buf);
}
