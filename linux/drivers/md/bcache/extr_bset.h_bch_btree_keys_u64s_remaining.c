
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btree_keys {int page_order; int last_set_unwritten; } ;
struct bset_tree {int data; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int bset_byte_offset (struct btree_keys*,int ) ;
 struct bset_tree* bset_tree_last (struct btree_keys*) ;
 int set_bytes (int ) ;

__attribute__((used)) static inline size_t bch_btree_keys_u64s_remaining(struct btree_keys *b)
{
 struct bset_tree *t = bset_tree_last(b);

 BUG_ON((PAGE_SIZE << b->page_order) <
        (bset_byte_offset(b, t->data) + set_bytes(t->data)));

 if (!b->last_set_unwritten)
  return 0;

 return ((PAGE_SIZE << b->page_order) -
  (bset_byte_offset(b, t->data) + set_bytes(t->data))) /
  sizeof(u64);
}
