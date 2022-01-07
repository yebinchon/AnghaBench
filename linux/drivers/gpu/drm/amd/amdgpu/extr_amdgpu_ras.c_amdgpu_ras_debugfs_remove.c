
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_manager {int * ent; } ;
struct ras_common_if {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 struct ras_manager* amdgpu_ras_find_obj (struct amdgpu_device*,struct ras_common_if*) ;
 int debugfs_remove (int *) ;
 int put_obj (struct ras_manager*) ;

void amdgpu_ras_debugfs_remove(struct amdgpu_device *adev,
  struct ras_common_if *head)
{
 struct ras_manager *obj = amdgpu_ras_find_obj(adev, head);

 if (!obj || !obj->ent)
  return;

 debugfs_remove(obj->ent);
 obj->ent = ((void*)0);
 put_obj(obj);
}
