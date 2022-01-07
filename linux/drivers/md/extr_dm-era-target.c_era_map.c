
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {int md; } ;
struct dm_target {struct era* private; } ;
struct bio {int bi_opf; } ;
typedef int dm_block_t ;


 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 int REQ_PREFLUSH ;
 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int defer_bio (struct era*,struct bio*) ;
 int get_block (struct era*,struct bio*) ;
 int metadata_current_marked (int ,int ) ;
 int remap_to_origin (struct era*,struct bio*) ;

__attribute__((used)) static int era_map(struct dm_target *ti, struct bio *bio)
{
 struct era *era = ti->private;
 dm_block_t block = get_block(era, bio);






 remap_to_origin(era, bio);




 if (!(bio->bi_opf & REQ_PREFLUSH) &&
     (bio_data_dir(bio) == WRITE) &&
     !metadata_current_marked(era->md, block)) {
  defer_bio(era, bio);
  return DM_MAPIO_SUBMITTED;
 }

 return DM_MAPIO_REMAPPED;
}
