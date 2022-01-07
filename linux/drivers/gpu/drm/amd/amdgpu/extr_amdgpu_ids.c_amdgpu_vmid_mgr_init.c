
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_vmid_mgr {unsigned int num_ids; int ids_lru; TYPE_2__* ids; int reserved_vmid_num; int lock; } ;
struct TYPE_3__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;
struct TYPE_4__ {int list; int active; } ;


 unsigned int AMDGPU_MAX_VMHUBS ;
 int INIT_LIST_HEAD (int *) ;
 int amdgpu_sync_create (int *) ;
 int amdgpu_vmid_reset (struct amdgpu_device*,unsigned int,unsigned int) ;
 int atomic_set (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;

void amdgpu_vmid_mgr_init(struct amdgpu_device *adev)
{
 unsigned i, j;

 for (i = 0; i < AMDGPU_MAX_VMHUBS; ++i) {
  struct amdgpu_vmid_mgr *id_mgr =
   &adev->vm_manager.id_mgr[i];

  mutex_init(&id_mgr->lock);
  INIT_LIST_HEAD(&id_mgr->ids_lru);
  atomic_set(&id_mgr->reserved_vmid_num, 0);


  for (j = 1; j < id_mgr->num_ids; ++j) {
   amdgpu_vmid_reset(adev, i, j);
   amdgpu_sync_create(&id_mgr->ids[j].active);
   list_add_tail(&id_mgr->ids[j].list, &id_mgr->ids_lru);
  }
 }
}
