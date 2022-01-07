
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int dummy; } ;
struct cache_set {int dummy; } ;
struct bio {struct closure* bi_private; } ;
typedef int blk_status_t ;


 int bch_bbio_count_io_errors (struct cache_set*,struct bio*,int ,char const*) ;
 int bio_put (struct bio*) ;
 int closure_put (struct closure*) ;

void bch_bbio_endio(struct cache_set *c, struct bio *bio,
      blk_status_t error, const char *m)
{
 struct closure *cl = bio->bi_private;

 bch_bbio_count_io_errors(c, bio, error, m);
 bio_put(bio);
 closure_put(cl);
}
