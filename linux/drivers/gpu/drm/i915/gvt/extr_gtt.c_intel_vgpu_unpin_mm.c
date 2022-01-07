
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_mm {int pincount; } ;


 int atomic_dec_if_positive (int *) ;

void intel_vgpu_unpin_mm(struct intel_vgpu_mm *mm)
{
 atomic_dec_if_positive(&mm->pincount);
}
