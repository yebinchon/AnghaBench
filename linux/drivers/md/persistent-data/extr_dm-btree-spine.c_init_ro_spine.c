
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ro_spine {int ** nodes; scalar_t__ count; struct dm_btree_info* info; } ;
struct dm_btree_info {int dummy; } ;



void init_ro_spine(struct ro_spine *s, struct dm_btree_info *info)
{
 s->info = info;
 s->count = 0;
 s->nodes[0] = ((void*)0);
 s->nodes[1] = ((void*)0);
}
