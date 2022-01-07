
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chunkshift; } ;
struct bitmap {TYPE_2__* mddev; TYPE_1__ counts; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {scalar_t__ recovery_cp; } ;


 int md_bitmap_file_set_bit (struct bitmap*,scalar_t__) ;
 int md_bitmap_set_memory_bits (struct bitmap*,scalar_t__,int) ;

void md_bitmap_dirty_bits(struct bitmap *bitmap, unsigned long s, unsigned long e)
{
 unsigned long chunk;

 for (chunk = s; chunk <= e; chunk++) {
  sector_t sec = (sector_t)chunk << bitmap->counts.chunkshift;
  md_bitmap_set_memory_bits(bitmap, sec, 1);
  md_bitmap_file_set_bit(bitmap, sec);
  if (sec < bitmap->mddev->recovery_cp)




   bitmap->mddev->recovery_cp = sec;
 }
}
