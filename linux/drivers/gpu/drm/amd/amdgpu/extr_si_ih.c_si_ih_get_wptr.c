
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_ih_ring {int rptr; int ptr_mask; int * wptr_cpu; } ;
struct amdgpu_device {int dev; } ;


 int IH_RB_CNTL ;
 int IH_RB_CNTL__WPTR_OVERFLOW_CLEAR_MASK ;
 int IH_RB_WPTR__RB_OVERFLOW_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int dev_warn (int ,char*,int,int,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 si_ih_get_wptr(struct amdgpu_device *adev,
     struct amdgpu_ih_ring *ih)
{
 u32 wptr, tmp;

 wptr = le32_to_cpu(*ih->wptr_cpu);

 if (wptr & IH_RB_WPTR__RB_OVERFLOW_MASK) {
  wptr &= ~IH_RB_WPTR__RB_OVERFLOW_MASK;
  dev_warn(adev->dev, "IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\n",
   wptr, ih->rptr, (wptr + 16) & ih->ptr_mask);
  ih->rptr = (wptr + 16) & ih->ptr_mask;
  tmp = RREG32(IH_RB_CNTL);
  tmp |= IH_RB_CNTL__WPTR_OVERFLOW_CLEAR_MASK;
  WREG32(IH_RB_CNTL, tmp);
 }
 return (wptr & ih->ptr_mask);
}
