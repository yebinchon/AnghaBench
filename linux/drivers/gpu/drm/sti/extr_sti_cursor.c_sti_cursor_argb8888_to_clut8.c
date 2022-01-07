
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int* base; } ;
struct sti_cursor {unsigned int height; unsigned int width; TYPE_1__ pixmap; } ;



__attribute__((used)) static void sti_cursor_argb8888_to_clut8(struct sti_cursor *cursor, u32 *src)
{
 u8 *dst = cursor->pixmap.base;
 unsigned int i, j;
 u32 a, r, g, b;

 for (i = 0; i < cursor->height; i++) {
  for (j = 0; j < cursor->width; j++) {

   a = (*src >> 30) & 3;
   r = (*src >> 22) & 3;
   g = (*src >> 14) & 3;
   b = (*src >> 6) & 3;
   *dst = a << 6 | r << 4 | g << 2 | b;
   src++;
   dst++;
  }
 }
}
