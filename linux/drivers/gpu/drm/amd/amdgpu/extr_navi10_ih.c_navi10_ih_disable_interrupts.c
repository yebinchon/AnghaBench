
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int enabled; scalar_t__ rptr; } ;
struct TYPE_4__ {TYPE_1__ ih; } ;
struct amdgpu_device {TYPE_2__ irq; } ;


 int ENABLE_INTR ;
 int IH_RB_CNTL ;
 int OSSSYS ;
 int RB_ENABLE ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmIH_RB_CNTL ;
 int mmIH_RB_RPTR ;
 int mmIH_RB_WPTR ;

__attribute__((used)) static void navi10_ih_disable_interrupts(struct amdgpu_device *adev)
{
 u32 ih_rb_cntl = RREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL);

 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, RB_ENABLE, 0);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, ENABLE_INTR, 0);
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_CNTL, ih_rb_cntl);

 WREG32_SOC15(OSSSYS, 0, mmIH_RB_RPTR, 0);
 WREG32_SOC15(OSSSYS, 0, mmIH_RB_WPTR, 0);
 adev->irq.ih.enabled = 0;
 adev->irq.ih.rptr = 0;
}
