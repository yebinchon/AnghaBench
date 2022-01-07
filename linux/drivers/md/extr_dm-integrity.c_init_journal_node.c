
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_node {scalar_t__ sector; int node; } ;
typedef scalar_t__ sector_t ;


 int RB_CLEAR_NODE (int *) ;

__attribute__((used)) static void init_journal_node(struct journal_node *node)
{
 RB_CLEAR_NODE(&node->node);
 node->sector = (sector_t)-1;
}
