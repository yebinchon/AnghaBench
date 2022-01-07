
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_rect {int x2; int x1; unsigned int y1; unsigned int y2; } ;
struct drm_framebuffer {unsigned int* pitches; } ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;
 int memcpy (int *,int *,size_t) ;
 int swab16 (int ) ;

void drm_fb_swab16(u16 *dst, void *vaddr, struct drm_framebuffer *fb,
     struct drm_rect *clip)
{
 size_t len = (clip->x2 - clip->x1) * sizeof(u16);
 unsigned int x, y;
 u16 *src, *buf;





 buf = kmalloc(len, GFP_KERNEL);
 if (!buf)
  return;

 for (y = clip->y1; y < clip->y2; y++) {
  src = vaddr + (y * fb->pitches[0]);
  src += clip->x1;
  memcpy(buf, src, len);
  src = buf;
  for (x = clip->x1; x < clip->x2; x++)
   *dst++ = swab16(*src++);
 }

 kfree(buf);
}
