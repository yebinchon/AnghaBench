
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shadow_spine {scalar_t__ count; struct dm_btree_info* info; } ;
struct dm_btree_info {int dummy; } ;



void init_shadow_spine(struct shadow_spine *s, struct dm_btree_info *info)
{
 s->info = info;
 s->count = 0;
}
