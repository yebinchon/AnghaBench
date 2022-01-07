
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_vmid_mgr {int lock; struct amdgpu_vmid* ids; } ;
struct amdgpu_vmid {scalar_t__ oa_size; scalar_t__ oa_base; scalar_t__ gws_size; scalar_t__ gws_base; scalar_t__ gds_size; scalar_t__ gds_base; scalar_t__ owner; } ;
struct TYPE_2__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void amdgpu_vmid_reset(struct amdgpu_device *adev, unsigned vmhub,
         unsigned vmid)
{
 struct amdgpu_vmid_mgr *id_mgr = &adev->vm_manager.id_mgr[vmhub];
 struct amdgpu_vmid *id = &id_mgr->ids[vmid];

 mutex_lock(&id_mgr->lock);
 id->owner = 0;
 id->gds_base = 0;
 id->gds_size = 0;
 id->gws_base = 0;
 id->gws_size = 0;
 id->oa_base = 0;
 id->oa_size = 0;
 mutex_unlock(&id_mgr->lock);
}
