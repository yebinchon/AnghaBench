
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int max_io_len; } ;
typedef int sector_t ;


 int dm_target_offset (struct dm_target*,int) ;
 int max_io_len_target_boundary (int,struct dm_target*) ;
 int sector_div (int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static sector_t max_io_len(sector_t sector, struct dm_target *ti)
{
 sector_t len = max_io_len_target_boundary(sector, ti);
 sector_t offset, max_len;




 if (ti->max_io_len) {
  offset = dm_target_offset(ti, sector);
  if (unlikely(ti->max_io_len & (ti->max_io_len - 1)))
   max_len = sector_div(offset, ti->max_io_len);
  else
   max_len = offset & (ti->max_io_len - 1);
  max_len = ti->max_io_len - max_len;

  if (len > max_len)
   len = max_len;
 }

 return len;
}
