
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct wc_entry {int lru; struct rb_node rb_node; } ;
struct TYPE_2__ {struct rb_node* rb_node; } ;
struct dm_writecache {int freelist_size; int freelist; TYPE_1__ freetree; struct wc_entry* current_free; } ;


 scalar_t__ WC_MODE_SORT_FREELIST (struct dm_writecache*) ;
 int list_add_tail (int *,int *) ;
 int rb_insert_color (struct rb_node*,TYPE_1__*) ;
 int rb_link_node (struct rb_node*,struct rb_node*,struct rb_node**) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void writecache_add_to_freelist(struct dm_writecache *wc, struct wc_entry *e)
{
 if (WC_MODE_SORT_FREELIST(wc)) {
  struct rb_node **node = &wc->freetree.rb_node, *parent = ((void*)0);
  if (unlikely(!*node))
   wc->current_free = e;
  while (*node) {
   parent = *node;
   if (&e->rb_node < *node)
    node = &parent->rb_left;
   else
    node = &parent->rb_right;
  }
  rb_link_node(&e->rb_node, parent, node);
  rb_insert_color(&e->rb_node, &wc->freetree);
 } else {
  list_add_tail(&e->lru, &wc->freelist);
 }
 wc->freelist_size++;
}
