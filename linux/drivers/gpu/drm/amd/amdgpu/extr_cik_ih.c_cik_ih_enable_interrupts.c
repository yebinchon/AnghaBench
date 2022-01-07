
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


 int IH_CNTL__ENABLE_INTR_MASK ;
 int IH_RB_CNTL__RB_ENABLE_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmIH_CNTL ;
 int mmIH_RB_CNTL ;

__attribute__((used)) static void cik_ih_enable_interrupts(struct amdgpu_device *adev)
{
 u32 ih_cntl = RREG32(mmIH_CNTL);
 u32 ih_rb_cntl = RREG32(mmIH_RB_CNTL);

 ih_cntl |= IH_CNTL__ENABLE_INTR_MASK;
 ih_rb_cntl |= IH_RB_CNTL__RB_ENABLE_MASK;
 WREG32(mmIH_CNTL, ih_cntl);
 WREG32(mmIH_RB_CNTL, ih_rb_cntl);
 adev->irq.ih.enabled = 1;
}
