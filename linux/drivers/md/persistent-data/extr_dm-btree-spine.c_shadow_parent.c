
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shadow_spine {int count; struct dm_block** nodes; } ;
struct dm_block {int dummy; } ;


 int BUG_ON (int) ;

struct dm_block *shadow_parent(struct shadow_spine *s)
{
 BUG_ON(s->count != 2);

 return s->count == 2 ? s->nodes[0] : ((void*)0);
}
