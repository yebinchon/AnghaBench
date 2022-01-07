
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pstore {TYPE_1__* store; int area; } ;
struct TYPE_2__ {int chunk_size; } ;


 int SECTOR_SHIFT ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void zero_memory_area(struct pstore *ps)
{
 memset(ps->area, 0, ps->store->chunk_size << SECTOR_SHIFT);
}
