
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {int chunk_lock; int chunk_wq; int reclaim; int chunk_rxtree; int dev; } ;
struct dm_chunk_work {unsigned int chunk; int work; int bio_list; struct dmz_target* target; int refcount; } ;
struct bio {int dummy; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 int INIT_WORK (int *,int ) ;
 int bio_list_add (int *,struct bio*) ;
 int bio_list_init (int *) ;
 unsigned int dmz_bio_chunk (int ,struct bio*) ;
 int dmz_chunk_work ;
 int dmz_get_chunk_work (struct dm_chunk_work*) ;
 int dmz_reclaim_bio_acc (int ) ;
 int kfree (struct dm_chunk_work*) ;
 struct dm_chunk_work* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ queue_work (int ,int *) ;
 int radix_tree_insert (int *,unsigned int,struct dm_chunk_work*) ;
 struct dm_chunk_work* radix_tree_lookup (int *,unsigned int) ;
 int refcount_set (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dmz_queue_chunk_work(struct dmz_target *dmz, struct bio *bio)
{
 unsigned int chunk = dmz_bio_chunk(dmz->dev, bio);
 struct dm_chunk_work *cw;
 int ret = 0;

 mutex_lock(&dmz->chunk_lock);


 cw = radix_tree_lookup(&dmz->chunk_rxtree, chunk);
 if (!cw) {


  cw = kmalloc(sizeof(struct dm_chunk_work), GFP_NOIO);
  if (unlikely(!cw)) {
   ret = -ENOMEM;
   goto out;
  }

  INIT_WORK(&cw->work, dmz_chunk_work);
  refcount_set(&cw->refcount, 0);
  cw->target = dmz;
  cw->chunk = chunk;
  bio_list_init(&cw->bio_list);

  ret = radix_tree_insert(&dmz->chunk_rxtree, chunk, cw);
  if (unlikely(ret)) {
   kfree(cw);
   goto out;
  }
 }

 bio_list_add(&cw->bio_list, bio);
 dmz_get_chunk_work(cw);

 dmz_reclaim_bio_acc(dmz->reclaim);
 if (queue_work(dmz->chunk_wq, &cw->work))
  dmz_get_chunk_work(cw);
out:
 mutex_unlock(&dmz->chunk_lock);
 return ret;
}
