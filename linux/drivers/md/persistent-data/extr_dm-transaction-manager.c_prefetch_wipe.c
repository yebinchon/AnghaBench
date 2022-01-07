
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prefetch_set {int * blocks; } ;


 int PREFETCH_SENTINEL ;
 unsigned int PREFETCH_SIZE ;

__attribute__((used)) static void prefetch_wipe(struct prefetch_set *p)
{
 unsigned i;
 for (i = 0; i < PREFETCH_SIZE; i++)
  p->blocks[i] = PREFETCH_SENTINEL;
}
