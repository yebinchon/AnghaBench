
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct clone_info {unsigned int sector; scalar_t__ sector_count; } ;
typedef int sector_t ;


 int EOPNOTSUPP ;
 int __send_duplicate_bios (struct clone_info*,struct dm_target*,unsigned int,unsigned int*) ;
 int max_io_len_target_boundary (unsigned int,struct dm_target*) ;
 unsigned int min (int ,int ) ;

__attribute__((used)) static int __send_changing_extent_only(struct clone_info *ci, struct dm_target *ti,
           unsigned num_bios)
{
 unsigned len;







 if (!num_bios)
  return -EOPNOTSUPP;

 len = min((sector_t)ci->sector_count, max_io_len_target_boundary(ci->sector, ti));

 __send_duplicate_bios(ci, ti, num_bios, &len);

 ci->sector += len;
 ci->sector_count -= len;

 return 0;
}
