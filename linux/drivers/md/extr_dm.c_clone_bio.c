
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int bi_sector; int bi_size; } ;
struct bio {TYPE_3__ bi_iter; } ;
struct dm_target_io {TYPE_2__* ti; TYPE_1__* io; struct bio clone; } ;
typedef unsigned int sector_t ;
struct TYPE_9__ {int name; } ;
struct TYPE_7__ {TYPE_4__* type; } ;
struct TYPE_6__ {int md; } ;


 int DMWARN (char*,int ,int ) ;
 int EIO ;
 int GFP_NOIO ;
 int __bio_clone_fast (struct bio*,struct bio*) ;
 int bio_advance (struct bio*,int ) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_clone (struct bio*,struct bio*,int ) ;
 int bio_integrity_trim (struct bio*) ;
 int dm_device_name (int ) ;
 int dm_target_has_integrity (TYPE_4__*) ;
 int dm_target_passes_integrity (TYPE_4__*) ;
 int to_bytes (unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int clone_bio(struct dm_target_io *tio, struct bio *bio,
       sector_t sector, unsigned len)
{
 struct bio *clone = &tio->clone;

 __bio_clone_fast(clone, bio);

 if (bio_integrity(bio)) {
  int r;

  if (unlikely(!dm_target_has_integrity(tio->ti->type) &&
        !dm_target_passes_integrity(tio->ti->type))) {
   DMWARN("%s: the target %s doesn't support integrity data.",
    dm_device_name(tio->io->md),
    tio->ti->type->name);
   return -EIO;
  }

  r = bio_integrity_clone(clone, bio, GFP_NOIO);
  if (r < 0)
   return r;
 }

 bio_advance(clone, to_bytes(sector - clone->bi_iter.bi_sector));
 clone->bi_iter.bi_size = to_bytes(len);

 if (bio_integrity(bio))
  bio_integrity_trim(clone);

 return 0;
}
