
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {unsigned int usec_timeout; } ;


 int HDP_MEM_COHERENCY_FLUSH_CNTL ;
 int REQUEST_TYPE (int) ;
 int RESPONSE_TYPE_MASK ;
 int RESPONSE_TYPE_SHIFT ;
 int RREG32 (int ) ;
 int VM_CONTEXT0_REQUEST_RESPONSE ;
 int WREG32 (int ,int) ;
 int pr_warn (char*) ;
 int udelay (int) ;

void evergreen_pcie_gart_tlb_flush(struct radeon_device *rdev)
{
 unsigned i;
 u32 tmp;

 WREG32(HDP_MEM_COHERENCY_FLUSH_CNTL, 0x1);

 WREG32(VM_CONTEXT0_REQUEST_RESPONSE, REQUEST_TYPE(1));
 for (i = 0; i < rdev->usec_timeout; i++) {

  tmp = RREG32(VM_CONTEXT0_REQUEST_RESPONSE);
  tmp = (tmp & RESPONSE_TYPE_MASK) >> RESPONSE_TYPE_SHIFT;
  if (tmp == 2) {
   pr_warn("[drm] r600 flush TLB failed\n");
   return;
  }
  if (tmp) {
   return;
  }
  udelay(1);
 }
}
