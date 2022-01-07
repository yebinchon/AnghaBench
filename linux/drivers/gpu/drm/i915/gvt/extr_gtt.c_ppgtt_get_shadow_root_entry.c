
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_mm {int dummy; } ;
struct intel_gvt_gtt_entry {int dummy; } ;


 int _ppgtt_get_root_entry (struct intel_vgpu_mm*,struct intel_gvt_gtt_entry*,unsigned long,int) ;

__attribute__((used)) static inline void ppgtt_get_shadow_root_entry(struct intel_vgpu_mm *mm,
  struct intel_gvt_gtt_entry *entry, unsigned long index)
{
 _ppgtt_get_root_entry(mm, entry, index, 0);
}
