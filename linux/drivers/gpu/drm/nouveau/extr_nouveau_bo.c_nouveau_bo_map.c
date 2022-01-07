
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_pages; } ;
struct TYPE_6__ {TYPE_1__ mem; } ;
struct nouveau_bo {TYPE_2__ bo; int kmap; } ;


 int ttm_bo_kmap (TYPE_2__*,int ,int ,int *) ;
 int ttm_bo_reserve (TYPE_2__*,int,int,int *) ;
 int ttm_bo_unreserve (TYPE_2__*) ;

int
nouveau_bo_map(struct nouveau_bo *nvbo)
{
 int ret;

 ret = ttm_bo_reserve(&nvbo->bo, 0, 0, ((void*)0));
 if (ret)
  return ret;

 ret = ttm_bo_kmap(&nvbo->bo, 0, nvbo->bo.mem.num_pages, &nvbo->kmap);

 ttm_bo_unreserve(&nvbo->bo);
 return ret;
}
