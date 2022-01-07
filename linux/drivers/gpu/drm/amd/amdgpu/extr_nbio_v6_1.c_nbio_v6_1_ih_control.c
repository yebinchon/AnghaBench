
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy_page_addr; } ;


 int IH_DUMMY_RD_OVERRIDE ;
 int IH_REQ_NONSNOOP_EN ;
 int INTERRUPT_CNTL ;
 int NBIO ;
 int REG_SET_FIELD (int,int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmINTERRUPT_CNTL ;
 int mmINTERRUPT_CNTL2 ;

__attribute__((used)) static void nbio_v6_1_ih_control(struct amdgpu_device *adev)
{
 u32 interrupt_cntl;


 WREG32_SOC15(NBIO, 0, mmINTERRUPT_CNTL2, adev->dummy_page_addr >> 8);
 interrupt_cntl = RREG32_SOC15(NBIO, 0, mmINTERRUPT_CNTL);



 interrupt_cntl = REG_SET_FIELD(interrupt_cntl, INTERRUPT_CNTL, IH_DUMMY_RD_OVERRIDE, 0);

 interrupt_cntl = REG_SET_FIELD(interrupt_cntl, INTERRUPT_CNTL, IH_REQ_NONSNOOP_EN, 0);
 WREG32_SOC15(NBIO, 0, mmINTERRUPT_CNTL, interrupt_cntl);
}
