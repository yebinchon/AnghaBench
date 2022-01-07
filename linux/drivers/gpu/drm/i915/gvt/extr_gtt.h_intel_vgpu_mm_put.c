
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_mm {int ref; } ;


 int _intel_vgpu_mm_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void intel_vgpu_mm_put(struct intel_vgpu_mm *mm)
{
 kref_put(&mm->ref, _intel_vgpu_mm_release);
}
