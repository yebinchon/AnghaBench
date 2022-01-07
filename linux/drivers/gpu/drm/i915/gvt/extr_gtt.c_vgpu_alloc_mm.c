
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_mm {int pincount; int ref; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int dummy; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int kref_init (int *) ;
 struct intel_vgpu_mm* kzalloc (int,int ) ;

__attribute__((used)) static struct intel_vgpu_mm *vgpu_alloc_mm(struct intel_vgpu *vgpu)
{
 struct intel_vgpu_mm *mm;

 mm = kzalloc(sizeof(*mm), GFP_KERNEL);
 if (!mm)
  return ((void*)0);

 mm->vgpu = vgpu;
 kref_init(&mm->ref);
 atomic_set(&mm->pincount, 0);

 return mm;
}
