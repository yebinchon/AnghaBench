
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmgt_guest_info {int kvm; } ;
typedef unsigned long kvm_pfn_t ;


 unsigned long INTEL_GVT_INVALID_ADDR ;
 unsigned long gfn_to_pfn (int ,unsigned long) ;
 int handle_valid (unsigned long) ;
 scalar_t__ is_error_noslot_pfn (unsigned long) ;

__attribute__((used)) static unsigned long kvmgt_gfn_to_pfn(unsigned long handle, unsigned long gfn)
{
 struct kvmgt_guest_info *info;
 kvm_pfn_t pfn;

 if (!handle_valid(handle))
  return INTEL_GVT_INVALID_ADDR;

 info = (struct kvmgt_guest_info *)handle;

 pfn = gfn_to_pfn(info->kvm, gfn);
 if (is_error_noslot_pfn(pfn))
  return INTEL_GVT_INVALID_ADDR;

 return pfn;
}
