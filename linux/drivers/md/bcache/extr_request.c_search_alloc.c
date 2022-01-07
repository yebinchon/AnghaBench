
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wq; int flush_journal; scalar_t__ flags; scalar_t__ status; scalar_t__ write_prio; int write_point; int inode; int * bio; TYPE_1__* c; } ;
struct search {int recoverable; TYPE_2__ iop; int start_time; scalar_t__ read_dirty_data; int write; struct bcache_device* d; scalar_t__ cache_missed; int * cache_miss; struct bio* orig_bio; int cl; } ;
struct bio {int bi_opf; } ;
struct bcache_device {int id; TYPE_1__* c; } ;
struct TYPE_3__ {int search_inflight; int search; } ;


 int GFP_NOIO ;
 int atomic_inc (int *) ;
 int bcache_wq ;
 int bio_op (struct bio*) ;
 int closure_init (int *,int *) ;
 scalar_t__ current ;
 int do_bio_hook (struct search*,struct bio*,int ) ;
 int hash_long (unsigned long,int) ;
 int jiffies ;
 struct search* mempool_alloc (int *,int ) ;
 int op_is_flush (int ) ;
 int op_is_write (int ) ;
 int request_endio ;

__attribute__((used)) static inline struct search *search_alloc(struct bio *bio,
       struct bcache_device *d)
{
 struct search *s;

 s = mempool_alloc(&d->c->search, GFP_NOIO);

 closure_init(&s->cl, ((void*)0));
 do_bio_hook(s, bio, request_endio);
 atomic_inc(&d->c->search_inflight);

 s->orig_bio = bio;
 s->cache_miss = ((void*)0);
 s->cache_missed = 0;
 s->d = d;
 s->recoverable = 1;
 s->write = op_is_write(bio_op(bio));
 s->read_dirty_data = 0;
 s->start_time = jiffies;

 s->iop.c = d->c;
 s->iop.bio = ((void*)0);
 s->iop.inode = d->id;
 s->iop.write_point = hash_long((unsigned long) current, 16);
 s->iop.write_prio = 0;
 s->iop.status = 0;
 s->iop.flags = 0;
 s->iop.flush_journal = op_is_flush(bio->bi_opf);
 s->iop.wq = bcache_wq;

 return s;
}
