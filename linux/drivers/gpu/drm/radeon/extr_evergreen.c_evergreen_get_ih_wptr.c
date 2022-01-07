
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rptr; int ptr_mask; } ;
struct TYPE_4__ {int * wb; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ ih; int dev; TYPE_2__ wb; } ;


 int IH_RB_CNTL ;
 int IH_RB_WPTR ;
 int IH_WPTR_OVERFLOW_CLEAR ;
 int R600_WB_IH_WPTR_OFFSET ;
 int RB_OVERFLOW ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int dev_warn (int ,char*,int,int,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 evergreen_get_ih_wptr(struct radeon_device *rdev)
{
 u32 wptr, tmp;

 if (rdev->wb.enabled)
  wptr = le32_to_cpu(rdev->wb.wb[R600_WB_IH_WPTR_OFFSET/4]);
 else
  wptr = RREG32(IH_RB_WPTR);

 if (wptr & RB_OVERFLOW) {
  wptr &= ~RB_OVERFLOW;




  dev_warn(rdev->dev, "IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\n",
    wptr, rdev->ih.rptr, (wptr + 16) & rdev->ih.ptr_mask);
  rdev->ih.rptr = (wptr + 16) & rdev->ih.ptr_mask;
  tmp = RREG32(IH_RB_CNTL);
  tmp |= IH_WPTR_OVERFLOW_CLEAR;
  WREG32(IH_RB_CNTL, tmp);
 }
 return (wptr & rdev->ih.ptr_mask);
}
