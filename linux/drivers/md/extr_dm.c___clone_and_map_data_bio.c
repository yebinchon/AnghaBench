
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target_io {unsigned int* len_ptr; } ;
struct dm_target {int dummy; } ;
struct clone_info {struct bio* bio; } ;
struct bio {int dummy; } ;
typedef int sector_t ;


 int GFP_NOIO ;
 int __map_bio (struct dm_target_io*) ;
 struct dm_target_io* alloc_tio (struct clone_info*,struct dm_target*,int ,int ) ;
 int clone_bio (struct dm_target_io*,struct bio*,int ,unsigned int) ;
 int free_tio (struct dm_target_io*) ;

__attribute__((used)) static int __clone_and_map_data_bio(struct clone_info *ci, struct dm_target *ti,
        sector_t sector, unsigned *len)
{
 struct bio *bio = ci->bio;
 struct dm_target_io *tio;
 int r;

 tio = alloc_tio(ci, ti, 0, GFP_NOIO);
 tio->len_ptr = len;
 r = clone_bio(tio, bio, sector, *len);
 if (r < 0) {
  free_tio(tio);
  return r;
 }
 (void) __map_bio(tio);

 return 0;
}
