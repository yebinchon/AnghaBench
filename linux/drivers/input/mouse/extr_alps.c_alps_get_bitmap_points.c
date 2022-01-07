
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alps_bitmap_point {int start_bit; scalar_t__ num_bits; } ;



__attribute__((used)) static void alps_get_bitmap_points(unsigned int map,
       struct alps_bitmap_point *low,
       struct alps_bitmap_point *high,
       int *fingers)
{
 struct alps_bitmap_point *point;
 int i, bit, prev_bit = 0;

 point = low;
 for (i = 0; map != 0; i++, map >>= 1) {
  bit = map & 1;
  if (bit) {
   if (!prev_bit) {
    point->start_bit = i;
    point->num_bits = 0;
    (*fingers)++;
   }
   point->num_bits++;
  } else {
   if (prev_bit)
    point = high;
  }
  prev_bit = bit;
 }
}
