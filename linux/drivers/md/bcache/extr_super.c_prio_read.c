
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct prio_set {scalar_t__ csum; scalar_t__ magic; struct bucket_disk* data; void* next_bucket; } ;
struct TYPE_2__ {int nbuckets; } ;
struct cache {TYPE_1__ sb; void** prio_last_buckets; void** prio_buckets; struct bucket* buckets; struct prio_set* disk_buckets; } ;
struct bucket_disk {int gen; int prio; } ;
struct bucket {int last_gc; int gen; int prio; } ;


 int REQ_OP_READ ;
 scalar_t__ bch_crc64 (scalar_t__*,scalar_t__) ;
 scalar_t__ bucket_bytes (struct cache*) ;
 int le16_to_cpu (int ) ;
 int pr_warn (char*) ;
 int prio_io (struct cache*,void*,int ,int ) ;
 int prios_per_bucket (struct cache*) ;
 scalar_t__ pset_magic (TYPE_1__*) ;

__attribute__((used)) static void prio_read(struct cache *ca, uint64_t bucket)
{
 struct prio_set *p = ca->disk_buckets;
 struct bucket_disk *d = p->data + prios_per_bucket(ca), *end = d;
 struct bucket *b;
 unsigned int bucket_nr = 0;

 for (b = ca->buckets;
      b < ca->buckets + ca->sb.nbuckets;
      b++, d++) {
  if (d == end) {
   ca->prio_buckets[bucket_nr] = bucket;
   ca->prio_last_buckets[bucket_nr] = bucket;
   bucket_nr++;

   prio_io(ca, bucket, REQ_OP_READ, 0);

   if (p->csum !=
       bch_crc64(&p->magic, bucket_bytes(ca) - 8))
    pr_warn("bad csum reading priorities");

   if (p->magic != pset_magic(&ca->sb))
    pr_warn("bad magic reading priorities");

   bucket = p->next_bucket;
   d = p->data;
  }

  b->prio = le16_to_cpu(d->prio);
  b->gen = b->last_gc = d->gen;
 }
}
