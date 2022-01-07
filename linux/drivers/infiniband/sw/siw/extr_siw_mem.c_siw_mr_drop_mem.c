
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_mr {struct siw_mem* mem; } ;
struct siw_mem {int stag; TYPE_1__* sdev; scalar_t__ stag_valid; } ;
struct TYPE_2__ {int mem_xa; } ;


 int WARN_ON (int) ;
 int siw_mem_put (struct siw_mem*) ;
 int smp_mb () ;
 struct siw_mem* xa_erase (int *,int) ;

void siw_mr_drop_mem(struct siw_mr *mr)
{
 struct siw_mem *mem = mr->mem, *found;

 mem->stag_valid = 0;


 smp_mb();

 found = xa_erase(&mem->sdev->mem_xa, mem->stag >> 8);
 WARN_ON(found != mem);
 siw_mem_put(mem);
}
