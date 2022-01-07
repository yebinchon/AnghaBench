
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ro_spine {int count; int * nodes; int info; } ;
typedef int dm_block_t ;


 int bn_read_lock (int ,int ,int *) ;
 int unlock_block (int ,int ) ;

int ro_step(struct ro_spine *s, dm_block_t new_child)
{
 int r;

 if (s->count == 2) {
  unlock_block(s->info, s->nodes[0]);
  s->nodes[0] = s->nodes[1];
  s->count--;
 }

 r = bn_read_lock(s->info, new_child, s->nodes + s->count);
 if (!r)
  s->count++;

 return r;
}
