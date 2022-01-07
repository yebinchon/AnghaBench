
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu_ppgtt_spt {TYPE_2__* vgpu; int post_shadow_list; int post_shadow_bitmap; } ;
struct TYPE_3__ {int post_shadow_list_head; } ;
struct TYPE_4__ {TYPE_1__ gtt; } ;


 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static void ppgtt_set_post_shadow(struct intel_vgpu_ppgtt_spt *spt,
  unsigned long index)
{
 set_bit(index, spt->post_shadow_bitmap);
 if (!list_empty(&spt->post_shadow_list))
  return;

 list_add_tail(&spt->post_shadow_list,
   &spt->vgpu->gtt.post_shadow_list_head);
}
