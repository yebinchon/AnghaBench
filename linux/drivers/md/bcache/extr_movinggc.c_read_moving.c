
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bio {int bi_end_io; } ;
struct TYPE_4__ {struct bio bio; } ;
struct TYPE_3__ {int wq; struct cache_set* c; int inode; } ;
struct moving_io {int cl; TYPE_2__ bio; TYPE_1__ op; struct keybuf_key* w; } ;
struct keybuf_key {struct moving_io* private; int key; } ;
struct closure {int dummy; } ;
struct cache_set {int moving_gc_keys; int moving_in_flight; int moving_gc_wq; int flags; } ;
struct bio_vec {int dummy; } ;


 int CACHE_SET_STOPPING ;
 int DIV_ROUND_UP (int ,int ) ;
 int GFP_KERNEL ;
 int IS_ERR_OR_NULL (struct moving_io*) ;
 int KEY_INODE (int *) ;
 int KEY_SIZE (int *) ;
 int MAX_KEY ;
 int PAGE_SECTORS ;
 int REQ_OP_READ ;
 scalar_t__ bch_bio_alloc_pages (struct bio*,int ) ;
 int bch_keybuf_del (int *,struct keybuf_key*) ;
 struct keybuf_key* bch_keybuf_next_rescan (struct cache_set*,int *,int *,int ) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int closure_call (int *,int ,int *,struct closure*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int down (int *) ;
 int kfree (struct moving_io*) ;
 struct moving_io* kzalloc (int,int ) ;
 int moving_init (struct moving_io*) ;
 int moving_pred ;
 scalar_t__ ptr_stale (struct cache_set*,int *,int ) ;
 int read_moving_endio ;
 int read_moving_submit ;
 int test_bit (int ,int *) ;
 int trace_bcache_gc_copy (int *) ;

__attribute__((used)) static void read_moving(struct cache_set *c)
{
 struct keybuf_key *w;
 struct moving_io *io;
 struct bio *bio;
 struct closure cl;

 closure_init_stack(&cl);



 while (!test_bit(CACHE_SET_STOPPING, &c->flags)) {
  w = bch_keybuf_next_rescan(c, &c->moving_gc_keys,
        &MAX_KEY, moving_pred);
  if (!w)
   break;

  if (ptr_stale(c, &w->key, 0)) {
   bch_keybuf_del(&c->moving_gc_keys, w);
   continue;
  }

  io = kzalloc(sizeof(struct moving_io) + sizeof(struct bio_vec)
        * DIV_ROUND_UP(KEY_SIZE(&w->key), PAGE_SECTORS),
        GFP_KERNEL);
  if (!io)
   goto err;

  w->private = io;
  io->w = w;
  io->op.inode = KEY_INODE(&w->key);
  io->op.c = c;
  io->op.wq = c->moving_gc_wq;

  moving_init(io);
  bio = &io->bio.bio;

  bio_set_op_attrs(bio, REQ_OP_READ, 0);
  bio->bi_end_io = read_moving_endio;

  if (bch_bio_alloc_pages(bio, GFP_KERNEL))
   goto err;

  trace_bcache_gc_copy(&w->key);

  down(&c->moving_in_flight);
  closure_call(&io->cl, read_moving_submit, ((void*)0), &cl);
 }

 if (0) {
err: if (!IS_ERR_OR_NULL(w->private))
   kfree(w->private);

  bch_keybuf_del(&c->moving_gc_keys, w);
 }

 closure_sync(&cl);
}
