
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int dummy; } ;
struct cache_set {int flags; } ;
struct bio {int bi_status; } ;


 int BLK_STS_IOERR ;
 int CACHE_SET_IO_DISABLE ;
 int bio_endio (struct bio*) ;
 int closure_get (struct closure*) ;
 int generic_make_request (struct bio*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void closure_bio_submit(struct cache_set *c,
          struct bio *bio,
          struct closure *cl)
{
 closure_get(cl);
 if (unlikely(test_bit(CACHE_SET_IO_DISABLE, &c->flags))) {
  bio->bi_status = BLK_STS_IOERR;
  bio_endio(bio);
  return;
 }
 generic_make_request(bio);
}
