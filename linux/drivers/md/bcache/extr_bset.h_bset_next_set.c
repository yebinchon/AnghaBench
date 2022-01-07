
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree_keys {int dummy; } ;
typedef void bset ;
struct TYPE_2__ {void* data; } ;


 TYPE_1__* bset_tree_last (struct btree_keys*) ;
 int roundup (int ,unsigned int) ;
 int set_bytes (void*) ;

__attribute__((used)) static inline struct bset *bset_next_set(struct btree_keys *b,
      unsigned int block_bytes)
{
 struct bset *i = bset_tree_last(b)->data;

 return ((void *) i) + roundup(set_bytes(i), block_bytes);
}
