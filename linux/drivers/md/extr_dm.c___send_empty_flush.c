
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_target {int num_flush_bios; } ;
struct clone_info {int bio; int map; TYPE_2__* io; } ;
struct TYPE_4__ {TYPE_1__* md; } ;
struct TYPE_3__ {int bdev; } ;


 int BUG_ON (int ) ;
 int __send_duplicate_bios (struct clone_info*,struct dm_target*,int ,int *) ;
 int bio_disassociate_blkg (int ) ;
 int bio_has_data (int ) ;
 int bio_set_dev (int ,int ) ;
 struct dm_target* dm_table_get_target (int ,int ) ;

__attribute__((used)) static int __send_empty_flush(struct clone_info *ci)
{
 unsigned target_nr = 0;
 struct dm_target *ti;
 bio_set_dev(ci->bio, ci->io->md->bdev);

 BUG_ON(bio_has_data(ci->bio));
 while ((ti = dm_table_get_target(ci->map, target_nr++)))
  __send_duplicate_bios(ci, ti, ti->num_flush_bios, ((void*)0));

 bio_disassociate_blkg(ci->bio);

 return 0;
}
