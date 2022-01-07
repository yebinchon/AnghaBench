
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_cursor {unsigned short* clut; } ;



__attribute__((used)) static void sti_cursor_init(struct sti_cursor *cursor)
{
 unsigned short *base = cursor->clut;
 unsigned int a, r, g, b;


 for (a = 0; a < 4; a++)
  for (r = 0; r < 4; r++)
   for (g = 0; g < 4; g++)
    for (b = 0; b < 4; b++)
     *base++ = (a * 5) << 12 |
        (r * 5) << 8 |
        (g * 5) << 4 |
        (b * 5);
}
