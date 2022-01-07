
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_node {int node; } ;
struct dm_integrity_c {int journal_tree_root; } ;


 int BUG_ON (int ) ;
 int RB_EMPTY_NODE (int *) ;
 int init_journal_node (struct journal_node*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void remove_journal_node(struct dm_integrity_c *ic, struct journal_node *node)
{
 BUG_ON(RB_EMPTY_NODE(&node->node));
 rb_erase(&node->node, &ic->journal_tree_root);
 init_journal_node(node);
}
