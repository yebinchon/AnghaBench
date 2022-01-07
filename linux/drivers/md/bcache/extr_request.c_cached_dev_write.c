
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int bypass; int writeback; int cl; TYPE_5__* c; struct bio* bio; int status; } ;
struct TYPE_7__ {int bi_sector; } ;
struct bio {int bi_opf; void* bi_end_io; struct closure* bi_private; TYPE_2__ bi_iter; } ;
struct TYPE_6__ {struct bio bio; } ;
struct closure {int dummy; } ;
struct search {TYPE_4__ iop; struct bio* orig_bio; TYPE_1__ bio; struct closure cl; } ;
struct TYPE_8__ {int bio_split; int id; } ;
struct cached_dev {TYPE_3__ disk; int bdev; int writeback_keys; int writeback_lock; } ;
struct bkey {int dummy; } ;
struct TYPE_10__ {int moving_gc_keys; } ;


 int BLK_STS_RESOURCE ;
 int GFP_NOIO ;
 struct bkey KEY (int ,int ,int ) ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 void* backing_request_endio ;
 int bch_data_insert ;
 scalar_t__ bch_keybuf_check_overlapping (int *,struct bkey*,struct bkey*) ;
 int bch_writeback_add (struct cached_dev*) ;
 int bdev_get_queue (int ) ;
 struct bio* bio_alloc_bioset (int ,int ,int *) ;
 struct bio* bio_clone_fast (struct bio*,int ,int *) ;
 int bio_copy_dev (struct bio*,struct bio*) ;
 int bio_end_sector (struct bio*) ;
 int bio_get (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int blk_queue_discard (int ) ;
 int cache_mode (struct cached_dev*) ;
 int cached_dev_write_complete ;
 int closure_bio_submit (TYPE_5__*,struct bio*,struct closure*) ;
 int closure_call (int *,int ,int *,struct closure*) ;
 int continue_at (struct closure*,int ,int *) ;
 int down_read_non_owner (int *) ;
 scalar_t__ should_writeback (struct cached_dev*,struct bio*,int ,int) ;

__attribute__((used)) static void cached_dev_write(struct cached_dev *dc, struct search *s)
{
 struct closure *cl = &s->cl;
 struct bio *bio = &s->bio.bio;
 struct bkey start = KEY(dc->disk.id, bio->bi_iter.bi_sector, 0);
 struct bkey end = KEY(dc->disk.id, bio_end_sector(bio), 0);

 bch_keybuf_check_overlapping(&s->iop.c->moving_gc_keys, &start, &end);

 down_read_non_owner(&dc->writeback_lock);
 if (bch_keybuf_check_overlapping(&dc->writeback_keys, &start, &end)) {




  s->iop.bypass = 0;
  s->iop.writeback = 1;
 }
 if (bio_op(bio) == REQ_OP_DISCARD)
  s->iop.bypass = 1;

 if (should_writeback(dc, s->orig_bio,
        cache_mode(dc),
        s->iop.bypass)) {
  s->iop.bypass = 0;
  s->iop.writeback = 1;
 }

 if (s->iop.bypass) {
  s->iop.bio = s->orig_bio;
  bio_get(s->iop.bio);

  if (bio_op(bio) == REQ_OP_DISCARD &&
      !blk_queue_discard(bdev_get_queue(dc->bdev)))
   goto insert_data;


  bio->bi_end_io = backing_request_endio;
  closure_bio_submit(s->iop.c, bio, cl);

 } else if (s->iop.writeback) {
  bch_writeback_add(dc);
  s->iop.bio = bio;

  if (bio->bi_opf & REQ_PREFLUSH) {




   struct bio *flush;

   flush = bio_alloc_bioset(GFP_NOIO, 0,
       &dc->disk.bio_split);
   if (!flush) {
    s->iop.status = BLK_STS_RESOURCE;
    goto insert_data;
   }
   bio_copy_dev(flush, bio);
   flush->bi_end_io = backing_request_endio;
   flush->bi_private = cl;
   flush->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;

   closure_bio_submit(s->iop.c, flush, cl);
  }
 } else {
  s->iop.bio = bio_clone_fast(bio, GFP_NOIO, &dc->disk.bio_split);

  bio->bi_end_io = backing_request_endio;
  closure_bio_submit(s->iop.c, bio, cl);
 }

insert_data:
 closure_call(&s->iop.cl, bch_data_insert, ((void*)0), cl);
 continue_at(cl, cached_dev_write_complete, ((void*)0));
}
