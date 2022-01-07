
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_vmid_mgr {int lock; int reserved_vmid_num; int ids_lru; } ;
struct amdgpu_vm {TYPE_1__** reserved_vmid; } ;
struct TYPE_4__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_2__ vm_manager; } ;
struct TYPE_3__ {int list; } ;


 int atomic_dec (int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void amdgpu_vmid_free_reserved(struct amdgpu_device *adev,
          struct amdgpu_vm *vm,
          unsigned vmhub)
{
 struct amdgpu_vmid_mgr *id_mgr = &adev->vm_manager.id_mgr[vmhub];

 mutex_lock(&id_mgr->lock);
 if (vm->reserved_vmid[vmhub]) {
  list_add(&vm->reserved_vmid[vmhub]->list,
   &id_mgr->ids_lru);
  vm->reserved_vmid[vmhub] = ((void*)0);
  atomic_dec(&id_mgr->reserved_vmid_num);
 }
 mutex_unlock(&id_mgr->lock);
}
