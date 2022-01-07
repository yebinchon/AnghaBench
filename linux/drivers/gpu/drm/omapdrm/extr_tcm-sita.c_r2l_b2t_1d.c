
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 int ENOMEM ;
 int bitmap_set (unsigned long*,unsigned long,size_t) ;
 unsigned long find_next_bit (unsigned long*,size_t,unsigned long) ;

__attribute__((used)) static int r2l_b2t_1d(u16 w, unsigned long *pos, unsigned long *map,
  size_t num_bits)
{
 unsigned long search_count = 0;
 unsigned long bit;
 bool area_found = 0;

 *pos = num_bits - w;

 while (search_count < num_bits) {
  bit = find_next_bit(map, num_bits, *pos);

  if (bit - *pos >= w) {

   bitmap_set(map, *pos, w);
   area_found = 1;
   break;
  }

  search_count = num_bits - bit + w;
  *pos = bit - w;
 }

 return (area_found) ? 0 : -ENOMEM;
}
