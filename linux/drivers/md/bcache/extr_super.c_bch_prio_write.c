
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct prio_set {long next_bucket; int magic; int csum; struct bucket_disk* data; int seq; } ;
struct closure {int dummy; } ;
struct TYPE_3__ {int bucket_size; int nbuckets; } ;
struct cache {long* prio_buckets; int* prio_last_buckets; struct bucket* buckets; TYPE_2__* set; TYPE_1__ sb; struct prio_set* disk_buckets; int meta_sectors_written; } ;
struct bucket_disk {int gen; int prio; } ;
struct bucket {int pin; int gen; int prio; } ;
struct TYPE_4__ {int bucket_lock; } ;


 int BUG_ON (int) ;
 int REQ_OP_WRITE ;
 int RESERVE_PRIO ;
 int __bch_bucket_free (struct cache*,struct bucket*) ;
 int atomic_dec_bug (int *) ;
 int atomic_long_add (int,int *) ;
 long bch_bucket_alloc (struct cache*,int ,int) ;
 int bch_crc64 (int *,scalar_t__) ;
 int bch_journal_meta (TYPE_2__*,struct closure*) ;
 scalar_t__ bucket_bytes (struct cache*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int cpu_to_le16 (int ) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prio_buckets (struct cache*) ;
 int prio_io (struct cache*,long,int ,int ) ;
 int prios_per_bucket (struct cache*) ;
 int pset_magic (TYPE_1__*) ;

void bch_prio_write(struct cache *ca)
{
 int i;
 struct bucket *b;
 struct closure cl;

 closure_init_stack(&cl);

 lockdep_assert_held(&ca->set->bucket_lock);

 ca->disk_buckets->seq++;

 atomic_long_add(ca->sb.bucket_size * prio_buckets(ca),
   &ca->meta_sectors_written);




 for (i = prio_buckets(ca) - 1; i >= 0; --i) {
  long bucket;
  struct prio_set *p = ca->disk_buckets;
  struct bucket_disk *d = p->data;
  struct bucket_disk *end = d + prios_per_bucket(ca);

  for (b = ca->buckets + i * prios_per_bucket(ca);
       b < ca->buckets + ca->sb.nbuckets && d < end;
       b++, d++) {
   d->prio = cpu_to_le16(b->prio);
   d->gen = b->gen;
  }

  p->next_bucket = ca->prio_buckets[i + 1];
  p->magic = pset_magic(&ca->sb);
  p->csum = bch_crc64(&p->magic, bucket_bytes(ca) - 8);

  bucket = bch_bucket_alloc(ca, RESERVE_PRIO, 1);
  BUG_ON(bucket == -1);

  mutex_unlock(&ca->set->bucket_lock);
  prio_io(ca, bucket, REQ_OP_WRITE, 0);
  mutex_lock(&ca->set->bucket_lock);

  ca->prio_buckets[i] = bucket;
  atomic_dec_bug(&ca->buckets[bucket].pin);
 }

 mutex_unlock(&ca->set->bucket_lock);

 bch_journal_meta(ca->set, &cl);
 closure_sync(&cl);

 mutex_lock(&ca->set->bucket_lock);





 for (i = 0; i < prio_buckets(ca); i++) {
  if (ca->prio_last_buckets[i])
   __bch_bucket_free(ca,
    &ca->buckets[ca->prio_last_buckets[i]]);

  ca->prio_last_buckets[i] = ca->prio_buckets[i];
 }
}
