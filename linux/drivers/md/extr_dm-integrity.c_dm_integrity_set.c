
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int queue; } ;
struct dm_target {int table; } ;
struct dm_integrity_c {TYPE_1__* sb; int tag_size; } ;
struct blk_integrity {scalar_t__ interval_exp; int tuple_size; int tag_size; int * profile; } ;
typedef int bi ;
struct TYPE_2__ {scalar_t__ log2_sectors_per_block; } ;


 scalar_t__ SECTOR_SHIFT ;
 int UINT_MAX ;
 int blk_integrity_register (struct gendisk*,struct blk_integrity*) ;
 int blk_queue_max_integrity_segments (int ,int ) ;
 struct gendisk* dm_disk (int ) ;
 int dm_integrity_profile ;
 int dm_table_get_md (int ) ;
 int memset (struct blk_integrity*,int ,int) ;

__attribute__((used)) static void dm_integrity_set(struct dm_target *ti, struct dm_integrity_c *ic)
{
 struct gendisk *disk = dm_disk(dm_table_get_md(ti->table));
 struct blk_integrity bi;

 memset(&bi, 0, sizeof(bi));
 bi.profile = &dm_integrity_profile;
 bi.tuple_size = ic->tag_size;
 bi.tag_size = bi.tuple_size;
 bi.interval_exp = ic->sb->log2_sectors_per_block + SECTOR_SHIFT;

 blk_integrity_register(disk, &bi);
 blk_queue_max_integrity_segments(disk->queue, UINT_MAX);
}
