
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_uiom_interval_node {int link; } ;
struct rb_root_cached {int dummy; } ;
struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int interval_cmp ;
 int list_add_tail (int *,struct list_head*) ;
 int list_sort (int *,struct list_head*,int ) ;
 struct usnic_uiom_interval_node* usnic_uiom_interval_tree_iter_first (struct rb_root_cached*,unsigned long,unsigned long) ;
 struct usnic_uiom_interval_node* usnic_uiom_interval_tree_iter_next (struct usnic_uiom_interval_node*,unsigned long,unsigned long) ;

__attribute__((used)) static void
find_intervals_intersection_sorted(struct rb_root_cached *root,
       unsigned long start, unsigned long last,
       struct list_head *list)
{
 struct usnic_uiom_interval_node *node;

 INIT_LIST_HEAD(list);

 for (node = usnic_uiom_interval_tree_iter_first(root, start, last);
  node;
  node = usnic_uiom_interval_tree_iter_next(node, start, last))
  list_add_tail(&node->link, list);

 list_sort(((void*)0), list, interval_cmp);
}
