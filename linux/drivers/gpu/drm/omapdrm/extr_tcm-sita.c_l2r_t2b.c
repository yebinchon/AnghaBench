
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;
typedef unsigned long s16 ;


 unsigned long ALIGN (unsigned long,unsigned long) ;
 unsigned long BITS_PER_LONG ;
 int ENOMEM ;
 unsigned long PAGE_SIZE ;
 int bitmap_clear (unsigned long*,int ,size_t) ;
 unsigned long bitmap_find_next_zero_area (unsigned long*,size_t,unsigned long,unsigned long,unsigned long) ;
 scalar_t__ bitmap_intersects (unsigned long*,unsigned long*,unsigned long) ;
 int bitmap_set (unsigned long*,unsigned long,unsigned long) ;
 unsigned long* mask ;

__attribute__((used)) static int l2r_t2b(u16 w, u16 h, u16 a, s16 offset,
  unsigned long *pos, unsigned long slot_bytes,
  unsigned long *map, size_t num_bits, size_t slot_stride)
{
 int i;
 unsigned long index;
 bool area_free = 0;
 unsigned long slots_per_band = PAGE_SIZE / slot_bytes;
 unsigned long bit_offset = (offset > 0) ? offset / slot_bytes : 0;
 unsigned long curr_bit = bit_offset;



 a = (offset > 0) ? 0 : a - 1;



 while (curr_bit < num_bits) {
  *pos = bitmap_find_next_zero_area(map, num_bits, curr_bit, w,
    a);


  if (bit_offset > 0 && (*pos % slots_per_band != bit_offset)) {
   curr_bit = ALIGN(*pos, slots_per_band) + bit_offset;
   continue;
  }


  if ((*pos % slot_stride) + w > slot_stride) {
   curr_bit = ALIGN(*pos, slot_stride) + bit_offset;
   continue;
  }




  if ((*pos + slot_stride * h) > num_bits)
   break;


  bitmap_clear(mask, 0, slot_stride);
  bitmap_set(mask, (*pos % BITS_PER_LONG), w);


  area_free = 1;


  for (i = 1; i < h; i++) {
   index = *pos / BITS_PER_LONG + i * 8;
   if (bitmap_intersects(&map[index], mask,
    (*pos % BITS_PER_LONG) + w)) {
    area_free = 0;
    break;
   }
  }

  if (area_free)
   break;


  if (bit_offset > 0)
   curr_bit = ALIGN(*pos, slots_per_band) + bit_offset;
  else
   curr_bit = *pos + a + 1;
 }

 if (area_free) {

  for (i = 0, index = *pos; i < h; i++, index += slot_stride)
   bitmap_set(map, index, w);
 }

 return (area_free) ? 0 : -ENOMEM;
}
