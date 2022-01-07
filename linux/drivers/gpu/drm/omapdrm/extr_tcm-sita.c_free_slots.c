
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int bitmap_clear (unsigned long*,unsigned long,int) ;

__attribute__((used)) static void free_slots(unsigned long pos, u16 w, u16 h,
  unsigned long *map, u16 stride)
{
 int i;

 for (i = 0; i < h; i++, pos += stride)
  bitmap_clear(map, pos, w);
}
