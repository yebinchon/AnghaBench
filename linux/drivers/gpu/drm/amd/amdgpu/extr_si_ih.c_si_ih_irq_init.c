
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ih_ring {int gpu_addr; int ring_size; int wptr_addr; } ;
struct TYPE_2__ {scalar_t__ msi_enabled; struct amdgpu_ih_ring ih; } ;
struct amdgpu_device {int pdev; TYPE_1__ irq; } ;


 int IH_CNTL ;
 int IH_DUMMY_RD_OVERRIDE ;
 int IH_RB_BASE ;
 int IH_RB_CNTL ;
 int IH_RB_RPTR ;
 int IH_RB_WPTR ;
 int IH_RB_WPTR_ADDR_HI ;
 int IH_RB_WPTR_ADDR_LO ;
 int IH_REQ_NONSNOOP_EN ;
 int IH_WPTR_OVERFLOW_CLEAR ;
 int IH_WPTR_OVERFLOW_ENABLE ;
 int IH_WPTR_WRITEBACK_ENABLE ;
 int INTERRUPT_CNTL ;
 int INTERRUPT_CNTL2 ;
 int MC_VMID (int ) ;
 int MC_WRREQ_CREDIT (int) ;
 int MC_WR_CLEAN_CNT (int) ;
 int RPTR_REARM ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int lower_32_bits (int ) ;
 int order_base_2 (int) ;
 int pci_set_master (int ) ;
 int si_ih_disable_interrupts (struct amdgpu_device*) ;
 int si_ih_enable_interrupts (struct amdgpu_device*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int si_ih_irq_init(struct amdgpu_device *adev)
{
 struct amdgpu_ih_ring *ih = &adev->irq.ih;
 int rb_bufsz;
 u32 interrupt_cntl, ih_cntl, ih_rb_cntl;

 si_ih_disable_interrupts(adev);
 WREG32(INTERRUPT_CNTL2, adev->irq.ih.gpu_addr >> 8);
 interrupt_cntl = RREG32(INTERRUPT_CNTL);
 interrupt_cntl &= ~IH_DUMMY_RD_OVERRIDE;
 interrupt_cntl &= ~IH_REQ_NONSNOOP_EN;
 WREG32(INTERRUPT_CNTL, interrupt_cntl);

 WREG32(IH_RB_BASE, adev->irq.ih.gpu_addr >> 8);
 rb_bufsz = order_base_2(adev->irq.ih.ring_size / 4);

 ih_rb_cntl = IH_WPTR_OVERFLOW_ENABLE |
       IH_WPTR_OVERFLOW_CLEAR |
       (rb_bufsz << 1) |
       IH_WPTR_WRITEBACK_ENABLE;

 WREG32(IH_RB_WPTR_ADDR_LO, lower_32_bits(ih->wptr_addr));
 WREG32(IH_RB_WPTR_ADDR_HI, upper_32_bits(ih->wptr_addr) & 0xFF);
 WREG32(IH_RB_CNTL, ih_rb_cntl);
 WREG32(IH_RB_RPTR, 0);
 WREG32(IH_RB_WPTR, 0);

 ih_cntl = MC_WRREQ_CREDIT(0x10) | MC_WR_CLEAN_CNT(0x10) | MC_VMID(0);
 if (adev->irq.msi_enabled)
  ih_cntl |= RPTR_REARM;
 WREG32(IH_CNTL, ih_cntl);

 pci_set_master(adev->pdev);
 si_ih_enable_interrupts(adev);

 return 0;
}
