
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int array_sectors; } ;
struct raid_set {TYPE_2__ md; TYPE_1__* ti; } ;
struct gendisk {int dummy; } ;
struct TYPE_3__ {int table; } ;


 struct gendisk* dm_disk (int ) ;
 int dm_table_get_md (int ) ;
 int revalidate_disk (struct gendisk*) ;
 int set_capacity (struct gendisk*,int ) ;

__attribute__((used)) static void rs_set_capacity(struct raid_set *rs)
{
 struct gendisk *gendisk = dm_disk(dm_table_get_md(rs->ti->table));

 set_capacity(gendisk, rs->md.array_sectors);
 revalidate_disk(gendisk);
}
