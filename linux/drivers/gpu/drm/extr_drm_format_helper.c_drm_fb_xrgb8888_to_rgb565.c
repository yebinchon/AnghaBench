
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct drm_rect {size_t x2; size_t x1; unsigned int y2; unsigned int y1; } ;
struct drm_framebuffer {int * pitches; } ;


 int GFP_KERNEL ;
 int clip_offset (struct drm_rect*,int ,int) ;
 int drm_fb_xrgb8888_to_rgb565_line (void*,void*,size_t,int) ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int memcpy (void*,void*,size_t) ;

void drm_fb_xrgb8888_to_rgb565(void *dst, void *vaddr,
          struct drm_framebuffer *fb,
          struct drm_rect *clip, bool swab)
{
 size_t linepixels = clip->x2 - clip->x1;
 size_t src_len = linepixels * sizeof(u32);
 size_t dst_len = linepixels * sizeof(u16);
 unsigned y, lines = clip->y2 - clip->y1;
 void *sbuf;





 sbuf = kmalloc(src_len, GFP_KERNEL);
 if (!sbuf)
  return;

 vaddr += clip_offset(clip, fb->pitches[0], sizeof(u32));
 for (y = 0; y < lines; y++) {
  memcpy(sbuf, vaddr, src_len);
  drm_fb_xrgb8888_to_rgb565_line(dst, sbuf, linepixels, swab);
  vaddr += fb->pitches[0];
  dst += dst_len;
 }

 kfree(sbuf);
}
