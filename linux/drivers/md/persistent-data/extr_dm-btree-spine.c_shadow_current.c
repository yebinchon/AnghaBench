
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shadow_spine {int count; struct dm_block** nodes; } ;
struct dm_block {int dummy; } ;


 int BUG_ON (int) ;

struct dm_block *shadow_current(struct shadow_spine *s)
{
 BUG_ON(!s->count);

 return s->nodes[s->count - 1];
}
