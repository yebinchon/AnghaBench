
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct intel_vgpu {TYPE_1__* gvt; } ;
struct intel_gvt_gtt_entry {int val64; } ;
struct intel_gvt_device_info {int gtt_entry_size; unsigned long gtt_entry_size_shift; } ;
struct TYPE_2__ {int dev_priv; struct intel_gvt_device_info device_info; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int intel_gvt_hypervisor_write_gpa (struct intel_vgpu*,unsigned long,int *,int) ;
 int write_pte64 (int ,unsigned long,int ) ;

__attribute__((used)) static inline int gtt_set_entry64(void *pt,
  struct intel_gvt_gtt_entry *e,
  unsigned long index, bool hypervisor_access, unsigned long gpa,
  struct intel_vgpu *vgpu)
{
 const struct intel_gvt_device_info *info = &vgpu->gvt->device_info;
 int ret;

 if (WARN_ON(info->gtt_entry_size != 8))
  return -EINVAL;

 if (hypervisor_access) {
  ret = intel_gvt_hypervisor_write_gpa(vgpu, gpa +
    (index << info->gtt_entry_size_shift),
    &e->val64, 8);
  if (WARN_ON(ret))
   return ret;
 } else if (!pt) {
  write_pte64(vgpu->gvt->dev_priv, index, e->val64);
 } else {
  *((u64 *)pt + index) = e->val64;
 }
 return 0;
}
