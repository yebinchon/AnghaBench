
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ shadow_page; } ;


 int __free_page (int ) ;
 int kfree (struct intel_vgpu_ppgtt_spt*) ;

__attribute__((used)) static void free_spt(struct intel_vgpu_ppgtt_spt *spt)
{
 __free_page(spt->shadow_page.page);
 kfree(spt);
}
