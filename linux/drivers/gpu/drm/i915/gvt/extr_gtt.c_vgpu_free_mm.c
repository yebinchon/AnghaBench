
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_mm {int dummy; } ;


 int kfree (struct intel_vgpu_mm*) ;

__attribute__((used)) static void vgpu_free_mm(struct intel_vgpu_mm *mm)
{
 kfree(mm);
}
