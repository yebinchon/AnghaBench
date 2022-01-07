
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_bo {TYPE_1__* shadow; int tbo; } ;
struct TYPE_2__ {int tbo; } ;


 int amdgpu_ttm_alloc_gart (int *) ;

__attribute__((used)) static int amdgpu_vm_sdma_map_table(struct amdgpu_bo *table)
{
 int r;

 r = amdgpu_ttm_alloc_gart(&table->tbo);
 if (r)
  return r;

 if (table->shadow)
  r = amdgpu_ttm_alloc_gart(&table->shadow->tbo);

 return r;
}
