
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ro_spine {size_t count; int * nodes; int info; } ;


 int BUG_ON (int) ;
 int unlock_block (int ,int ) ;

void ro_pop(struct ro_spine *s)
{
 BUG_ON(!s->count);
 --s->count;
 unlock_block(s->info, s->nodes[s->count]);
}
