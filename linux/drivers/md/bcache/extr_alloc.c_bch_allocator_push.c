
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int * free; } ;


 unsigned int RESERVE_NR ;
 size_t RESERVE_PRIO ;
 scalar_t__ fifo_push (int *,long) ;

__attribute__((used)) static int bch_allocator_push(struct cache *ca, long bucket)
{
 unsigned int i;


 if (fifo_push(&ca->free[RESERVE_PRIO], bucket))
  return 1;

 for (i = 0; i < RESERVE_NR; i++)
  if (fifo_push(&ca->free[i], bucket))
   return 1;

 return 0;
}
