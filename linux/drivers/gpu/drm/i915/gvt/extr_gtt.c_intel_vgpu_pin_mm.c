
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lru_list; } ;
struct intel_vgpu_mm {scalar_t__ type; TYPE_3__* vgpu; TYPE_1__ ppgtt_mm; int pincount; } ;
struct TYPE_8__ {int ppgtt_mm_lock; int ppgtt_mm_lru_list_head; } ;
struct TYPE_7__ {TYPE_2__* gvt; } ;
struct TYPE_6__ {TYPE_4__ gtt; } ;


 scalar_t__ INTEL_GVT_MM_PPGTT ;
 int atomic_inc (int *) ;
 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int shadow_ppgtt_mm (struct intel_vgpu_mm*) ;

int intel_vgpu_pin_mm(struct intel_vgpu_mm *mm)
{
 int ret;

 atomic_inc(&mm->pincount);

 if (mm->type == INTEL_GVT_MM_PPGTT) {
  ret = shadow_ppgtt_mm(mm);
  if (ret)
   return ret;

  mutex_lock(&mm->vgpu->gvt->gtt.ppgtt_mm_lock);
  list_move_tail(&mm->ppgtt_mm.lru_list,
          &mm->vgpu->gvt->gtt.ppgtt_mm_lru_list_head);
  mutex_unlock(&mm->vgpu->gvt->gtt.ppgtt_mm_lock);
 }

 return 0;
}
