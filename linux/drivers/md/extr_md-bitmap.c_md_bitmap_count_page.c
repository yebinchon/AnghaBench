
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bitmap_counts {unsigned long chunkshift; TYPE_1__* bp; } ;
typedef unsigned long sector_t ;
struct TYPE_2__ {int count; } ;


 unsigned long PAGE_COUNTER_SHIFT ;
 int md_bitmap_checkfree (struct bitmap_counts*,unsigned long) ;

__attribute__((used)) static void md_bitmap_count_page(struct bitmap_counts *bitmap,
     sector_t offset, int inc)
{
 sector_t chunk = offset >> bitmap->chunkshift;
 unsigned long page = chunk >> PAGE_COUNTER_SHIFT;
 bitmap->bp[page].count += inc;
 md_bitmap_checkfree(bitmap, page);
}
