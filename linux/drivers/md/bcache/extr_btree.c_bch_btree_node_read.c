
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct closure {int dummy; } ;
struct TYPE_11__ {TYPE_2__* set; } ;
struct btree {int key; TYPE_4__* c; TYPE_3__ keys; } ;
struct TYPE_9__ {int bi_size; } ;
struct bio {int bi_opf; scalar_t__ bi_status; struct closure* bi_private; int bi_end_io; TYPE_1__ bi_iter; } ;
struct TYPE_12__ {int btree_read_time; } ;
struct TYPE_10__ {int data; } ;


 int KEY_SIZE (int *) ;
 int PTR_BUCKET_NR (TYPE_4__*,int *,int ) ;
 int REQ_META ;
 int REQ_OP_READ ;
 struct bio* bch_bbio_alloc (TYPE_4__*) ;
 int bch_bbio_free (struct bio*,TYPE_4__*) ;
 int bch_bio_map (struct bio*,int ) ;
 int bch_btree_node_read_done (struct btree*) ;
 int bch_cache_set_error (TYPE_4__*,char*,int ) ;
 int bch_submit_bbio (struct bio*,TYPE_4__*,int *,int ) ;
 int bch_time_stats_update (int *,int ) ;
 scalar_t__ btree_node_io_error (struct btree*) ;
 int btree_node_read_endio ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int local_clock () ;
 int set_btree_node_io_error (struct btree*) ;
 int trace_bcache_btree_read (struct btree*) ;

__attribute__((used)) static void bch_btree_node_read(struct btree *b)
{
 uint64_t start_time = local_clock();
 struct closure cl;
 struct bio *bio;

 trace_bcache_btree_read(b);

 closure_init_stack(&cl);

 bio = bch_bbio_alloc(b->c);
 bio->bi_iter.bi_size = KEY_SIZE(&b->key) << 9;
 bio->bi_end_io = btree_node_read_endio;
 bio->bi_private = &cl;
 bio->bi_opf = REQ_OP_READ | REQ_META;

 bch_bio_map(bio, b->keys.set[0].data);

 bch_submit_bbio(bio, b->c, &b->key, 0);
 closure_sync(&cl);

 if (bio->bi_status)
  set_btree_node_io_error(b);

 bch_bbio_free(bio, b->c);

 if (btree_node_io_error(b))
  goto err;

 bch_btree_node_read_done(b);
 bch_time_stats_update(&b->c->btree_read_time, start_time);

 return;
err:
 bch_cache_set_error(b->c, "io error reading bucket %zu",
       PTR_BUCKET_NR(b->c, &b->key, 0));
}
