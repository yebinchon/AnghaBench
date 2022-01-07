
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int page_order; struct bset_tree* set; } ;
struct bset_tree {int * data; int * tree; int * prev; } ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ bset_prev_bytes (struct btree_keys*) ;
 scalar_t__ bset_tree_bytes (struct btree_keys*) ;
 int free_pages (unsigned long,int ) ;
 int get_order (scalar_t__) ;
 int kfree (int *) ;

void bch_btree_keys_free(struct btree_keys *b)
{
 struct bset_tree *t = b->set;

 if (bset_prev_bytes(b) < PAGE_SIZE)
  kfree(t->prev);
 else
  free_pages((unsigned long) t->prev,
      get_order(bset_prev_bytes(b)));

 if (bset_tree_bytes(b) < PAGE_SIZE)
  kfree(t->tree);
 else
  free_pages((unsigned long) t->tree,
      get_order(bset_tree_bytes(b)));

 free_pages((unsigned long) t->data, b->page_order);

 t->prev = ((void*)0);
 t->tree = ((void*)0);
 t->data = ((void*)0);
}
