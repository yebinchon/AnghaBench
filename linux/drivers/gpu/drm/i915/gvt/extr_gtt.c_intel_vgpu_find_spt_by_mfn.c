
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu_ppgtt_spt {int dummy; } ;
struct TYPE_2__ {int spt_tree; } ;
struct intel_vgpu {TYPE_1__ gtt; } ;


 struct intel_vgpu_ppgtt_spt* radix_tree_lookup (int *,unsigned long) ;

__attribute__((used)) static inline struct intel_vgpu_ppgtt_spt *intel_vgpu_find_spt_by_mfn(
  struct intel_vgpu *vgpu, unsigned long mfn)
{
 return radix_tree_lookup(&vgpu->gtt.spt_tree, mfn);
}
