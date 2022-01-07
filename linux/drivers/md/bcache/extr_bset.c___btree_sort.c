
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct page {int dummy; } ;
struct btree_keys {unsigned int nsets; unsigned int page_order; TYPE_1__* set; } ;
struct btree_iter {int dummy; } ;
struct bset_sort_state {unsigned int page_order; int time; int pool; } ;
struct bset {scalar_t__ start; int keys; int version; int seq; int magic; } ;
struct TYPE_4__ {int start; int keys; int version; int seq; int magic; } ;
struct TYPE_3__ {TYPE_2__* data; } ;


 int BUG_ON (int) ;
 int GFP_NOIO ;
 int GFP_NOWAIT ;
 int __GFP_NOWARN ;
 scalar_t__ __get_free_pages (int,unsigned int) ;
 int bch_bset_build_written_tree (struct btree_keys*) ;
 int bch_time_stats_update (int *,int ) ;
 scalar_t__ bset_bkey_last (struct bset*) ;
 int btree_mergesort (struct btree_keys*,struct bset*,struct btree_iter*,int,int) ;
 int free_pages (unsigned long,unsigned int) ;
 int local_clock () ;
 int memcpy (int ,scalar_t__,int) ;
 struct page* mempool_alloc (int *,int ) ;
 int mempool_free (int ,int *) ;
 struct bset* page_address (struct page*) ;
 int swap (struct bset*,TYPE_2__*) ;
 int virt_to_page (struct bset*) ;

__attribute__((used)) static void __btree_sort(struct btree_keys *b, struct btree_iter *iter,
    unsigned int start, unsigned int order, bool fixup,
    struct bset_sort_state *state)
{
 uint64_t start_time;
 bool used_mempool = 0;
 struct bset *out = (void *) __get_free_pages(__GFP_NOWARN|GFP_NOWAIT,
           order);
 if (!out) {
  struct page *outp;

  BUG_ON(order > state->page_order);

  outp = mempool_alloc(&state->pool, GFP_NOIO);
  out = page_address(outp);
  used_mempool = 1;
  order = state->page_order;
 }

 start_time = local_clock();

 btree_mergesort(b, out, iter, fixup, 0);
 b->nsets = start;

 if (!start && order == b->page_order) {






  out->magic = b->set->data->magic;
  out->seq = b->set->data->seq;
  out->version = b->set->data->version;
  swap(out, b->set->data);
 } else {
  b->set[start].data->keys = out->keys;
  memcpy(b->set[start].data->start, out->start,
         (void *) bset_bkey_last(out) - (void *) out->start);
 }

 if (used_mempool)
  mempool_free(virt_to_page(out), &state->pool);
 else
  free_pages((unsigned long) out, order);

 bch_bset_build_written_tree(b);

 if (!start)
  bch_time_stats_update(&state->time, start_time);
}
