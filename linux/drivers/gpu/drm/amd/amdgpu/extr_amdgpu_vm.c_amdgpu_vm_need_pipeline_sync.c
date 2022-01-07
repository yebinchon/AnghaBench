
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_vmid_mgr {struct amdgpu_vmid* ids; } ;
struct amdgpu_vmid {scalar_t__ gds_base; scalar_t__ gds_size; scalar_t__ gws_base; scalar_t__ gws_size; scalar_t__ oa_base; scalar_t__ oa_size; } ;
struct amdgpu_ring {TYPE_2__* funcs; scalar_t__ has_compute_vm_bug; struct amdgpu_device* adev; } ;
struct amdgpu_job {size_t vmid; scalar_t__ gds_base; scalar_t__ gds_size; scalar_t__ gws_base; scalar_t__ gws_size; scalar_t__ oa_base; scalar_t__ oa_size; scalar_t__ vm_needs_flush; } ;
struct TYPE_3__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;
struct TYPE_4__ {unsigned int vmhub; scalar_t__ emit_gds_switch; } ;


 scalar_t__ amdgpu_vmid_had_gpu_reset (struct amdgpu_device*,struct amdgpu_vmid*) ;

bool amdgpu_vm_need_pipeline_sync(struct amdgpu_ring *ring,
      struct amdgpu_job *job)
{
 struct amdgpu_device *adev = ring->adev;
 unsigned vmhub = ring->funcs->vmhub;
 struct amdgpu_vmid_mgr *id_mgr = &adev->vm_manager.id_mgr[vmhub];
 struct amdgpu_vmid *id;
 bool gds_switch_needed;
 bool vm_flush_needed = job->vm_needs_flush || ring->has_compute_vm_bug;

 if (job->vmid == 0)
  return 0;
 id = &id_mgr->ids[job->vmid];
 gds_switch_needed = ring->funcs->emit_gds_switch && (
  id->gds_base != job->gds_base ||
  id->gds_size != job->gds_size ||
  id->gws_base != job->gws_base ||
  id->gws_size != job->gws_size ||
  id->oa_base != job->oa_base ||
  id->oa_size != job->oa_size);

 if (amdgpu_vmid_had_gpu_reset(adev, id))
  return 1;

 return vm_flush_needed || gds_switch_needed;
}
