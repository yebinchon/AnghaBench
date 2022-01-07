
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dm_crypt_io {struct crypt_config* cc; } ;
struct crypt_config {int bio_alloc_lock; int page_pool; int bs; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 int GFP_NOIO ;
 int GFP_NOWAIT ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_HIGHMEM ;
 int bio_add_page (struct bio*,struct page*,unsigned int,int ) ;
 struct bio* bio_alloc_bioset (int ,unsigned int,int *) ;
 int bio_put (struct bio*) ;
 int clone_init (struct dm_crypt_io*,struct bio*) ;
 int crypt_free_buffer_pages (struct crypt_config*,struct bio*) ;
 scalar_t__ dm_crypt_integrity_io_alloc (struct dm_crypt_io*,struct bio*) ;
 struct page* mempool_alloc (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned size)
{
 struct crypt_config *cc = io->cc;
 struct bio *clone;
 unsigned int nr_iovecs = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 gfp_t gfp_mask = GFP_NOWAIT | __GFP_HIGHMEM;
 unsigned i, len, remaining_size;
 struct page *page;

retry:
 if (unlikely(gfp_mask & __GFP_DIRECT_RECLAIM))
  mutex_lock(&cc->bio_alloc_lock);

 clone = bio_alloc_bioset(GFP_NOIO, nr_iovecs, &cc->bs);
 if (!clone)
  goto out;

 clone_init(io, clone);

 remaining_size = size;

 for (i = 0; i < nr_iovecs; i++) {
  page = mempool_alloc(&cc->page_pool, gfp_mask);
  if (!page) {
   crypt_free_buffer_pages(cc, clone);
   bio_put(clone);
   gfp_mask |= __GFP_DIRECT_RECLAIM;
   goto retry;
  }

  len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;

  bio_add_page(clone, page, len, 0);

  remaining_size -= len;
 }


 if (dm_crypt_integrity_io_alloc(io, clone)) {
  crypt_free_buffer_pages(cc, clone);
  bio_put(clone);
  clone = ((void*)0);
 }
out:
 if (unlikely(gfp_mask & __GFP_DIRECT_RECLAIM))
  mutex_unlock(&cc->bio_alloc_lock);

 return clone;
}
