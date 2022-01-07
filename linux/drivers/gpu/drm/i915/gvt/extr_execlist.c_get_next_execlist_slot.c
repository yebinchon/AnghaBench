
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_vgpu_execlist_slot {int dummy; } ;
struct intel_vgpu_execlist {int ring_id; struct intel_vgpu_execlist_slot* slot; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int gvt; } ;
struct execlist_status_format {size_t execlist_write_pointer; scalar_t__ execlist_queue_full; void* udw; void* ldw; } ;


 int _EL_OFFSET_STATUS ;
 scalar_t__ execlist_ring_mmio (int ,int,int ) ;
 int gvt_vgpu_err (char*) ;
 void* vgpu_vreg (struct intel_vgpu*,scalar_t__) ;

__attribute__((used)) static struct intel_vgpu_execlist_slot *get_next_execlist_slot(
  struct intel_vgpu_execlist *execlist)
{
 struct intel_vgpu *vgpu = execlist->vgpu;
 int ring_id = execlist->ring_id;
 u32 status_reg = execlist_ring_mmio(vgpu->gvt, ring_id,
   _EL_OFFSET_STATUS);
 struct execlist_status_format status;

 status.ldw = vgpu_vreg(vgpu, status_reg);
 status.udw = vgpu_vreg(vgpu, status_reg + 4);

 if (status.execlist_queue_full) {
  gvt_vgpu_err("virtual execlist slots are full\n");
  return ((void*)0);
 }

 return &execlist->slot[status.execlist_write_pointer];
}
