
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_mm {int dummy; } ;
struct intel_vgpu {int dummy; } ;


 int EFAULT ;
 int I915_GTT_PAGE_SIZE ;
 unsigned long INTEL_GVT_INVALID_ADDR ;
 int gvt_vgpu_err (char*,unsigned long) ;
 int intel_gvt_hypervisor_read_gpa (struct intel_vgpu*,unsigned long,void*,unsigned long) ;
 unsigned long intel_vgpu_gma_to_gpa (struct intel_vgpu_mm*,unsigned long) ;

__attribute__((used)) static int copy_gma_to_hva(struct intel_vgpu *vgpu, struct intel_vgpu_mm *mm,
  unsigned long gma, unsigned long end_gma, void *va)
{
 unsigned long copy_len, offset;
 unsigned long len = 0;
 unsigned long gpa;

 while (gma != end_gma) {
  gpa = intel_vgpu_gma_to_gpa(mm, gma);
  if (gpa == INTEL_GVT_INVALID_ADDR) {
   gvt_vgpu_err("invalid gma address: %lx\n", gma);
   return -EFAULT;
  }

  offset = gma & (I915_GTT_PAGE_SIZE - 1);

  copy_len = (end_gma - gma) >= (I915_GTT_PAGE_SIZE - offset) ?
   I915_GTT_PAGE_SIZE - offset : end_gma - gma;

  intel_gvt_hypervisor_read_gpa(vgpu, gpa, va + len, copy_len);

  len += copy_len;
  gma += copy_len;
 }
 return len;
}
