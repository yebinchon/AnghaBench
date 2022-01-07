
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_bioctx {int bio; } ;
struct bio {int bi_status; struct dmz_bioctx* bi_private; } ;
typedef int blk_status_t ;


 int bio_put (struct bio*) ;
 int dmz_bio_endio (int ,int ) ;

__attribute__((used)) static void dmz_clone_endio(struct bio *clone)
{
 struct dmz_bioctx *bioctx = clone->bi_private;
 blk_status_t status = clone->bi_status;

 bio_put(clone);
 dmz_bio_endio(bioctx->bio, status);
}
