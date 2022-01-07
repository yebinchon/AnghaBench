
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct clone_info {unsigned int sector; unsigned int sector_count; int map; } ;


 int EIO ;
 int __clone_and_map_data_bio (struct clone_info*,struct dm_target*,unsigned int,unsigned int*) ;
 scalar_t__ __process_abnormal_io (struct clone_info*,struct dm_target*,int*) ;
 struct dm_target* dm_table_find_target (int ,unsigned int) ;
 int max_io_len (unsigned int,struct dm_target*) ;
 unsigned int min_t (int ,int ,unsigned int) ;
 int sector_t ;

__attribute__((used)) static int __split_and_process_non_flush(struct clone_info *ci)
{
 struct dm_target *ti;
 unsigned len;
 int r;

 ti = dm_table_find_target(ci->map, ci->sector);
 if (!ti)
  return -EIO;

 if (__process_abnormal_io(ci, ti, &r))
  return r;

 len = min_t(sector_t, max_io_len(ci->sector, ti), ci->sector_count);

 r = __clone_and_map_data_bio(ci, ti, ci->sector, &len);
 if (r < 0)
  return r;

 ci->sector += len;
 ci->sector_count -= len;

 return 0;
}
