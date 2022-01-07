
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* skip_tab ;

__attribute__((used)) static void meson_overlay_get_vertical_phase(unsigned int ratio_y, int *phase,
          int *repeat, bool interlace)
{
 int offset_in = 0;
 int offset_out = 0;
 int repeat_skip = 0;

 if (!interlace && ratio_y > (1 << 18))
  offset_out = (1 * ratio_y) >> 10;

 while ((offset_in + (4 << 8)) <= offset_out) {
  repeat_skip++;
  offset_in += 4 << 8;
 }

 *phase = (offset_out - offset_in) >> 2;

 if (*phase > 0x100)
  repeat_skip++;

 *phase = *phase & 0xff;

 if (repeat_skip > 5)
  repeat_skip = 5;

 *repeat = skip_tab[repeat_skip];
}
