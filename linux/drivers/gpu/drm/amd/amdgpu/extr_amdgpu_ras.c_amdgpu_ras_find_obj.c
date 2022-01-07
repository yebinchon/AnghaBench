
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t block; } ;
struct ras_manager {TYPE_1__ head; } ;
struct ras_common_if {int block; } ;
struct amdgpu_ras {struct ras_manager* objs; } ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_RAS_BLOCK_COUNT ;
 int WARN_ON (int) ;
 scalar_t__ alive_obj (struct ras_manager*) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;

__attribute__((used)) static struct ras_manager *amdgpu_ras_find_obj(struct amdgpu_device *adev,
  struct ras_common_if *head)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct ras_manager *obj;
 int i;

 if (!con)
  return ((void*)0);

 if (head) {
  if (head->block >= AMDGPU_RAS_BLOCK_COUNT)
   return ((void*)0);

  obj = &con->objs[head->block];

  if (alive_obj(obj)) {
   WARN_ON(head->block != obj->head.block);
   return obj;
  }
 } else {
  for (i = 0; i < AMDGPU_RAS_BLOCK_COUNT; i++) {
   obj = &con->objs[i];
   if (alive_obj(obj)) {
    WARN_ON(i != obj->head.block);
    return obj;
   }
  }
 }

 return ((void*)0);
}
