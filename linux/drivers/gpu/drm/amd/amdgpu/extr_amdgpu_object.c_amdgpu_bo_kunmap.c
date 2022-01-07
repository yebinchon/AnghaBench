
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bo; } ;
struct amdgpu_bo {TYPE_1__ kmap; } ;


 int ttm_bo_kunmap (TYPE_1__*) ;

void amdgpu_bo_kunmap(struct amdgpu_bo *bo)
{
 if (bo->kmap.bo)
  ttm_bo_kunmap(&bo->kmap);
}
