
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_mm {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void intel_vgpu_mm_get(struct intel_vgpu_mm *mm)
{
 kref_get(&mm->ref);
}
