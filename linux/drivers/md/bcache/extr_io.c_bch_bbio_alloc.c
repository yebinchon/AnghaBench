
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int bio_meta; } ;
struct bio {int bi_inline_vecs; } ;
struct bbio {struct bio bio; } ;


 int GFP_NOIO ;
 int bio_init (struct bio*,int ,int ) ;
 int bucket_pages (struct cache_set*) ;
 struct bbio* mempool_alloc (int *,int ) ;

struct bio *bch_bbio_alloc(struct cache_set *c)
{
 struct bbio *b = mempool_alloc(&c->bio_meta, GFP_NOIO);
 struct bio *bio = &b->bio;

 bio_init(bio, bio->bi_inline_vecs, bucket_pages(c));

 return bio;
}
