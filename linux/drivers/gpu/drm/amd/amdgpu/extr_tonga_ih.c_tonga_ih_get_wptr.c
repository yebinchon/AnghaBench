
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_ih_ring {int rptr; int ptr_mask; int * wptr_cpu; } ;
struct amdgpu_device {int dev; } ;


 int IH_RB_CNTL ;
 int IH_RB_WPTR ;
 int RB_OVERFLOW ;
 scalar_t__ REG_GET_FIELD (int,int ,int ) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int ) ;
 int WPTR_OVERFLOW_CLEAR ;
 int WREG32 (int ,int) ;
 int dev_warn (int ,char*,int,int,int) ;
 int le32_to_cpu (int ) ;
 int mmIH_RB_CNTL ;

__attribute__((used)) static u32 tonga_ih_get_wptr(struct amdgpu_device *adev,
        struct amdgpu_ih_ring *ih)
{
 u32 wptr, tmp;

 wptr = le32_to_cpu(*ih->wptr_cpu);

 if (REG_GET_FIELD(wptr, IH_RB_WPTR, RB_OVERFLOW)) {
  wptr = REG_SET_FIELD(wptr, IH_RB_WPTR, RB_OVERFLOW, 0);




  dev_warn(adev->dev, "IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\n",
    wptr, ih->rptr, (wptr + 16) & ih->ptr_mask);
  ih->rptr = (wptr + 16) & ih->ptr_mask;
  tmp = RREG32(mmIH_RB_CNTL);
  tmp = REG_SET_FIELD(tmp, IH_RB_CNTL, WPTR_OVERFLOW_CLEAR, 1);
  WREG32(mmIH_RB_CNTL, tmp);
 }
 return (wptr & ih->ptr_mask);
}
