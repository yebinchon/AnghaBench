
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_details {int bi_iter; int bi_flags; int bi_partno; int bi_disk; } ;
struct bio {int bi_iter; int bi_flags; int bi_partno; int bi_disk; } ;



__attribute__((used)) static inline void dm_bio_restore(struct dm_bio_details *bd, struct bio *bio)
{
 bio->bi_disk = bd->bi_disk;
 bio->bi_partno = bd->bi_partno;
 bio->bi_flags = bd->bi_flags;
 bio->bi_iter = bd->bi_iter;
}
