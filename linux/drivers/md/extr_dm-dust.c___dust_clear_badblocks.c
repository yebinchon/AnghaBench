
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int * rb_node; } ;
struct rb_node {int dummy; } ;


 int BUG_ON (int) ;
 int kfree (struct rb_node*) ;
 int rb_erase (struct rb_node*,struct rb_root*) ;
 struct rb_node* rb_first (struct rb_root*) ;
 struct rb_node* rb_next (struct rb_node*) ;

__attribute__((used)) static bool __dust_clear_badblocks(struct rb_root *tree,
       unsigned long long count)
{
 struct rb_node *node = ((void*)0), *nnode = ((void*)0);

 nnode = rb_first(tree);
 if (nnode == ((void*)0)) {
  BUG_ON(count != 0);
  return 0;
 }

 while (nnode) {
  node = nnode;
  nnode = rb_next(node);
  rb_erase(node, tree);
  count--;
  kfree(node);
 }
 BUG_ON(count != 0);
 BUG_ON(tree->rb_node != ((void*)0));

 return 1;
}
