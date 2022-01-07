
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int capacity; } ;
typedef int sector_t ;


 int NR_PHY_IN_LOG ;

__attribute__((used)) static sector_t pblk_capacity(void *private)
{
 struct pblk *pblk = private;

 return pblk->capacity * NR_PHY_IN_LOG;
}
