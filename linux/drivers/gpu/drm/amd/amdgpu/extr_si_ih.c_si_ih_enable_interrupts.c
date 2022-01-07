
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int enabled; } ;
struct TYPE_4__ {TYPE_1__ ih; } ;
struct amdgpu_device {TYPE_2__ irq; } ;


 int ENABLE_INTR ;
 int IH_CNTL ;
 int IH_RB_CNTL ;
 int IH_RB_ENABLE ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void si_ih_enable_interrupts(struct amdgpu_device *adev)
{
 u32 ih_cntl = RREG32(IH_CNTL);
 u32 ih_rb_cntl = RREG32(IH_RB_CNTL);

 ih_cntl |= ENABLE_INTR;
 ih_rb_cntl |= IH_RB_ENABLE;
 WREG32(IH_CNTL, ih_cntl);
 WREG32(IH_RB_CNTL, ih_rb_cntl);
 adev->irq.ih.enabled = 1;
}
