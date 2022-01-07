
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_bo_list {int refcount; } ;


 int amdgpu_bo_list_free ;
 int kref_put (int *,int ) ;

void amdgpu_bo_list_put(struct amdgpu_bo_list *list)
{
 kref_put(&list->refcount, amdgpu_bo_list_free);
}
