
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
struct dm_target_io {unsigned int* len_ptr; struct bio clone; } ;
struct clone_info {int sector; int bio; } ;
typedef int blk_qc_t ;


 int __bio_clone_fast (struct bio*,int ) ;
 int __map_bio (struct dm_target_io*) ;
 int bio_setup_sector (struct bio*,int ,unsigned int) ;

__attribute__((used)) static blk_qc_t __clone_and_map_simple_bio(struct clone_info *ci,
        struct dm_target_io *tio, unsigned *len)
{
 struct bio *clone = &tio->clone;

 tio->len_ptr = len;

 __bio_clone_fast(clone, ci->bio);
 if (len)
  bio_setup_sector(clone, ci->sector, *len);

 return __map_bio(tio);
}
