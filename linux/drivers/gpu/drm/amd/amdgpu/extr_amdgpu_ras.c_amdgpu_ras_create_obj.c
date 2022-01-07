
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_common_if {size_t block; } ;
struct ras_manager {int node; struct amdgpu_device* adev; struct ras_common_if head; } ;
struct amdgpu_ras {int head; struct ras_manager* objs; } ;
struct amdgpu_device {int dummy; } ;


 size_t AMDGPU_RAS_BLOCK_COUNT ;
 scalar_t__ alive_obj (struct ras_manager*) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int get_obj (struct ras_manager*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static struct ras_manager *amdgpu_ras_create_obj(struct amdgpu_device *adev,
  struct ras_common_if *head)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct ras_manager *obj;

 if (!con)
  return ((void*)0);

 if (head->block >= AMDGPU_RAS_BLOCK_COUNT)
  return ((void*)0);

 obj = &con->objs[head->block];

 if (alive_obj(obj))
  return ((void*)0);

 obj->head = *head;
 obj->adev = adev;
 list_add(&obj->node, &con->head);
 get_obj(obj);

 return obj;
}
