
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_mm {int dummy; } ;


 int intel_vgpu_mm_put (struct intel_vgpu_mm*) ;

__attribute__((used)) static inline void intel_vgpu_destroy_mm(struct intel_vgpu_mm *mm)
{
 intel_vgpu_mm_put(mm);
}
