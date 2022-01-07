
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;
struct amdgpu_bo {struct ttm_buffer_object tbo; } ;


 int ttm_bo_put (struct ttm_buffer_object*) ;

void amdgpu_bo_unref(struct amdgpu_bo **bo)
{
 struct ttm_buffer_object *tbo;

 if ((*bo) == ((void*)0))
  return;

 tbo = &((*bo)->tbo);
 ttm_bo_put(tbo);
 *bo = ((void*)0);
}
