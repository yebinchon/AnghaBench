
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys_ops {int dummy; } ;
struct btree_keys {int* expensive_debug_checks; scalar_t__ last_set_unwritten; scalar_t__ nsets; struct btree_keys_ops const* ops; } ;



void bch_btree_keys_init(struct btree_keys *b, const struct btree_keys_ops *ops,
    bool *expensive_debug_checks)
{
 b->ops = ops;
 b->expensive_debug_checks = expensive_debug_checks;
 b->nsets = 0;
 b->last_set_unwritten = 0;
}
