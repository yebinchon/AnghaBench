
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int enabled; scalar_t__ rptr; } ;
struct TYPE_3__ {TYPE_2__ ih; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int IH_CNTL__ENABLE_INTR_MASK ;
 int IH_RB_CNTL__RB_ENABLE_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmIH_CNTL ;
 int mmIH_RB_CNTL ;
 int mmIH_RB_RPTR ;
 int mmIH_RB_WPTR ;

__attribute__((used)) static void cik_ih_disable_interrupts(struct amdgpu_device *adev)
{
 u32 ih_rb_cntl = RREG32(mmIH_RB_CNTL);
 u32 ih_cntl = RREG32(mmIH_CNTL);

 ih_rb_cntl &= ~IH_RB_CNTL__RB_ENABLE_MASK;
 ih_cntl &= ~IH_CNTL__ENABLE_INTR_MASK;
 WREG32(mmIH_RB_CNTL, ih_rb_cntl);
 WREG32(mmIH_CNTL, ih_cntl);

 WREG32(mmIH_RB_RPTR, 0);
 WREG32(mmIH_RB_WPTR, 0);
 adev->irq.ih.enabled = 0;
 adev->irq.ih.rptr = 0;
}
