
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int swab16 (int) ;

__attribute__((used)) static void drm_fb_xrgb8888_to_rgb565_line(u16 *dbuf, u32 *sbuf,
        unsigned int pixels,
        bool swab)
{
 unsigned int x;
 u16 val16;

 for (x = 0; x < pixels; x++) {
  val16 = ((sbuf[x] & 0x00F80000) >> 8) |
   ((sbuf[x] & 0x0000FC00) >> 5) |
   ((sbuf[x] & 0x000000F8) >> 3);
  if (swab)
   dbuf[x] = swab16(val16);
  else
   dbuf[x] = val16;
 }
}
