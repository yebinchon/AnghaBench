
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int addrf_len; int capacity; } ;



__attribute__((used)) static size_t pblk_trans_map_size(struct pblk *pblk)
{
 int entry_size = 8;

 if (pblk->addrf_len < 32)
  entry_size = 4;

 return entry_size * pblk->capacity;
}
