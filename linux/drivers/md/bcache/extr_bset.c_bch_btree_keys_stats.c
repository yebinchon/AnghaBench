
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct btree_keys {unsigned int nsets; struct bset_tree* set; } ;
struct bset_tree {int size; TYPE_2__* tree; TYPE_1__* data; } ;
struct bset_stats {size_t bytes_written; size_t bytes_unwritten; int sets_unwritten; int failed; int floats; int sets_written; } ;
struct TYPE_4__ {int exponent; } ;
struct TYPE_3__ {int keys; } ;


 scalar_t__ bset_written (struct btree_keys*,struct bset_tree*) ;

void bch_btree_keys_stats(struct btree_keys *b, struct bset_stats *stats)
{
 unsigned int i;

 for (i = 0; i <= b->nsets; i++) {
  struct bset_tree *t = &b->set[i];
  size_t bytes = t->data->keys * sizeof(uint64_t);
  size_t j;

  if (bset_written(b, t)) {
   stats->sets_written++;
   stats->bytes_written += bytes;

   stats->floats += t->size - 1;

   for (j = 1; j < t->size; j++)
    if (t->tree[j].exponent == 127)
     stats->failed++;
  } else {
   stats->sets_unwritten++;
   stats->bytes_unwritten += bytes;
  }
 }
}
