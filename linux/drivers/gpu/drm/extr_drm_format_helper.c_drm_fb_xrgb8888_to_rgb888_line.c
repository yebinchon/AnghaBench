
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void drm_fb_xrgb8888_to_rgb888_line(u8 *dbuf, u32 *sbuf,
        unsigned int pixels)
{
 unsigned int x;

 for (x = 0; x < pixels; x++) {
  *dbuf++ = (sbuf[x] & 0x000000FF) >> 0;
  *dbuf++ = (sbuf[x] & 0x0000FF00) >> 8;
  *dbuf++ = (sbuf[x] & 0x00FF0000) >> 16;
 }
}
