
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ro_spine {int count; int * nodes; int info; } ;


 int unlock_block (int ,int ) ;

int exit_ro_spine(struct ro_spine *s)
{
 int r = 0, i;

 for (i = 0; i < s->count; i++) {
  unlock_block(s->info, s->nodes[i]);
 }

 return r;
}
