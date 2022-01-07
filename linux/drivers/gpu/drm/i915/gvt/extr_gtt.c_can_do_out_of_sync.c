
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_cnt; int type; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ guest_page; } ;


 scalar_t__ enable_out_of_sync ;
 scalar_t__ gtt_type_is_pte_pt (int ) ;

__attribute__((used)) static inline bool can_do_out_of_sync(struct intel_vgpu_ppgtt_spt *spt)
{
 return enable_out_of_sync
  && gtt_type_is_pte_pt(spt->guest_page.type)
  && spt->guest_page.write_cnt >= 2;
}
