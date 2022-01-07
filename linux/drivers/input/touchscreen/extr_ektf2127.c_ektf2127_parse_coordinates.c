
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_mt_pos {int x; int y; } ;



__attribute__((used)) static void ektf2127_parse_coordinates(const u8 *buf, unsigned int touch_count,
           struct input_mt_pos *touches)
{
 int index = 0;
 int i;

 for (i = 0; i < touch_count; i++) {
  index = 2 + i * 3;

  touches[i].x = (buf[index] & 0x0f);
  touches[i].x <<= 8;
  touches[i].x |= buf[index + 2];

  touches[i].y = (buf[index] & 0xf0);
  touches[i].y <<= 4;
  touches[i].y |= buf[index + 1];
 }
}
