
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bi_size; int bi_sector; } ;
struct bio {int bi_end_io; TYPE_2__ bi_iter; int bi_inline_vecs; } ;
struct journal_device {int discard_idx; int last_idx; int discard_work; int discard_in_flight; struct bio discard_bio; } ;
struct TYPE_4__ {int njournal_buckets; int * d; } ;
struct cache {TYPE_3__* set; int bdev; TYPE_1__ sb; int discard; struct journal_device journal; } ;
struct TYPE_6__ {int cl; } ;





 int INIT_WORK (int *,int ) ;
 int REQ_OP_DISCARD ;
 int atomic_read (int *) ;
 int atomic_set (int *,int const) ;
 int bch_journal_wq ;
 int bio_init (struct bio*,int ,int) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int bucket_bytes (struct cache*) ;
 int bucket_to_sector (TYPE_3__*,int ) ;
 int closure_get (int *) ;
 int journal_discard_endio ;
 int journal_discard_work ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void do_journal_discard(struct cache *ca)
{
 struct journal_device *ja = &ca->journal;
 struct bio *bio = &ja->discard_bio;

 if (!ca->discard) {
  ja->discard_idx = ja->last_idx;
  return;
 }

 switch (atomic_read(&ja->discard_in_flight)) {
 case 129:
  return;

 case 130:
  ja->discard_idx = (ja->discard_idx + 1) %
   ca->sb.njournal_buckets;

  atomic_set(&ja->discard_in_flight, 128);


 case 128:
  if (ja->discard_idx == ja->last_idx)
   return;

  atomic_set(&ja->discard_in_flight, 129);

  bio_init(bio, bio->bi_inline_vecs, 1);
  bio_set_op_attrs(bio, REQ_OP_DISCARD, 0);
  bio->bi_iter.bi_sector = bucket_to_sector(ca->set,
      ca->sb.d[ja->discard_idx]);
  bio_set_dev(bio, ca->bdev);
  bio->bi_iter.bi_size = bucket_bytes(ca);
  bio->bi_end_io = journal_discard_endio;

  closure_get(&ca->set->cl);
  INIT_WORK(&ja->discard_work, journal_discard_work);
  queue_work(bch_journal_wq, &ja->discard_work);
 }
}
