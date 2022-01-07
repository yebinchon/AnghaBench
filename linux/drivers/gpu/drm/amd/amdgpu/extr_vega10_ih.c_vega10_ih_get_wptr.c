
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ih_ring {int ptr_mask; int rptr; int * wptr_cpu; } ;
struct TYPE_2__ {struct amdgpu_ih_ring ih2; struct amdgpu_ih_ring ih1; struct amdgpu_ih_ring ih; } ;
struct amdgpu_device {TYPE_1__ irq; int dev; } ;


 int BUG () ;
 int IH_RB_CNTL ;
 int IH_RB_WPTR ;
 int OSSSYS ;
 int RB_OVERFLOW ;
 int REG_GET_FIELD (int,int ,int ) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_NO_KIQ (int) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WPTR_OVERFLOW_CLEAR ;
 int WREG32_NO_KIQ (int,int) ;
 int dev_warn (int ,char*,int,int,int) ;
 int le32_to_cpu (int ) ;
 int mmIH_RB_CNTL ;
 int mmIH_RB_CNTL_RING1 ;
 int mmIH_RB_CNTL_RING2 ;
 int mmIH_RB_WPTR ;
 int mmIH_RB_WPTR_RING1 ;
 int mmIH_RB_WPTR_RING2 ;

__attribute__((used)) static u32 vega10_ih_get_wptr(struct amdgpu_device *adev,
         struct amdgpu_ih_ring *ih)
{
 u32 wptr, reg, tmp;

 wptr = le32_to_cpu(*ih->wptr_cpu);

 if (!REG_GET_FIELD(wptr, IH_RB_WPTR, RB_OVERFLOW))
  goto out;



 if (ih == &adev->irq.ih)
  reg = SOC15_REG_OFFSET(OSSSYS, 0, mmIH_RB_WPTR);
 else if (ih == &adev->irq.ih1)
  reg = SOC15_REG_OFFSET(OSSSYS, 0, mmIH_RB_WPTR_RING1);
 else if (ih == &adev->irq.ih2)
  reg = SOC15_REG_OFFSET(OSSSYS, 0, mmIH_RB_WPTR_RING2);
 else
  BUG();

 wptr = RREG32_NO_KIQ(reg);
 if (!REG_GET_FIELD(wptr, IH_RB_WPTR, RB_OVERFLOW))
  goto out;

 wptr = REG_SET_FIELD(wptr, IH_RB_WPTR, RB_OVERFLOW, 0);





 tmp = (wptr + 32) & ih->ptr_mask;
 dev_warn(adev->dev, "IH ring buffer overflow "
   "(0x%08X, 0x%08X, 0x%08X)\n",
   wptr, ih->rptr, tmp);
 ih->rptr = tmp;

 if (ih == &adev->irq.ih)
  reg = SOC15_REG_OFFSET(OSSSYS, 0, mmIH_RB_CNTL);
 else if (ih == &adev->irq.ih1)
  reg = SOC15_REG_OFFSET(OSSSYS, 0, mmIH_RB_CNTL_RING1);
 else if (ih == &adev->irq.ih2)
  reg = SOC15_REG_OFFSET(OSSSYS, 0, mmIH_RB_CNTL_RING2);
 else
  BUG();

 tmp = RREG32_NO_KIQ(reg);
 tmp = REG_SET_FIELD(tmp, IH_RB_CNTL, WPTR_OVERFLOW_CLEAR, 1);
 WREG32_NO_KIQ(reg, tmp);

out:
 return (wptr & ih->ptr_mask);
}
