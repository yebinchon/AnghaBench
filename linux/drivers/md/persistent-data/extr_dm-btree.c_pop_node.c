
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_btree_cursor {size_t depth; TYPE_1__* nodes; int info; } ;
struct TYPE_2__ {int b; } ;


 int unlock_block (int ,int ) ;

__attribute__((used)) static void pop_node(struct dm_btree_cursor *c)
{
 c->depth--;
 unlock_block(c->info, c->nodes[c->depth].b);
}
