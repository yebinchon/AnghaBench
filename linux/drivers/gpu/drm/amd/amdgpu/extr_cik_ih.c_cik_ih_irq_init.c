
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ih_ring {int gpu_addr; int ring_size; int wptr_addr; } ;
struct TYPE_2__ {scalar_t__ msi_enabled; struct amdgpu_ih_ring ih; } ;
struct amdgpu_device {int dummy_page_addr; int pdev; TYPE_1__ irq; } ;


 int IH_CNTL__MC_VMID__SHIFT ;
 int IH_CNTL__MC_WRREQ_CREDIT__SHIFT ;
 int IH_CNTL__MC_WR_CLEAN_CNT__SHIFT ;
 int IH_CNTL__RPTR_REARM_MASK ;
 int IH_RB_CNTL__WPTR_OVERFLOW_CLEAR_MASK ;
 int IH_RB_CNTL__WPTR_OVERFLOW_ENABLE_MASK ;
 int IH_RB_CNTL__WPTR_WRITEBACK_ENABLE_MASK ;
 int INTERRUPT_CNTL__IH_DUMMY_RD_OVERRIDE_MASK ;
 int INTERRUPT_CNTL__IH_REQ_NONSNOOP_EN_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int cik_ih_disable_interrupts (struct amdgpu_device*) ;
 int cik_ih_enable_interrupts (struct amdgpu_device*) ;
 int lower_32_bits (int ) ;
 int mmIH_CNTL ;
 int mmIH_RB_BASE ;
 int mmIH_RB_CNTL ;
 int mmIH_RB_RPTR ;
 int mmIH_RB_WPTR ;
 int mmIH_RB_WPTR_ADDR_HI ;
 int mmIH_RB_WPTR_ADDR_LO ;
 int mmINTERRUPT_CNTL ;
 int mmINTERRUPT_CNTL2 ;
 int order_base_2 (int) ;
 int pci_set_master (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int cik_ih_irq_init(struct amdgpu_device *adev)
{
 struct amdgpu_ih_ring *ih = &adev->irq.ih;
 int rb_bufsz;
 u32 interrupt_cntl, ih_cntl, ih_rb_cntl;


 cik_ih_disable_interrupts(adev);


 WREG32(mmINTERRUPT_CNTL2, adev->dummy_page_addr >> 8);
 interrupt_cntl = RREG32(mmINTERRUPT_CNTL);



 interrupt_cntl &= ~INTERRUPT_CNTL__IH_DUMMY_RD_OVERRIDE_MASK;

 interrupt_cntl &= ~INTERRUPT_CNTL__IH_REQ_NONSNOOP_EN_MASK;
 WREG32(mmINTERRUPT_CNTL, interrupt_cntl);

 WREG32(mmIH_RB_BASE, adev->irq.ih.gpu_addr >> 8);
 rb_bufsz = order_base_2(adev->irq.ih.ring_size / 4);

 ih_rb_cntl = (IH_RB_CNTL__WPTR_OVERFLOW_ENABLE_MASK |
        IH_RB_CNTL__WPTR_OVERFLOW_CLEAR_MASK |
        (rb_bufsz << 1));

 ih_rb_cntl |= IH_RB_CNTL__WPTR_WRITEBACK_ENABLE_MASK;


 WREG32(mmIH_RB_WPTR_ADDR_LO, lower_32_bits(ih->wptr_addr));
 WREG32(mmIH_RB_WPTR_ADDR_HI, upper_32_bits(ih->wptr_addr) & 0xFF);

 WREG32(mmIH_RB_CNTL, ih_rb_cntl);


 WREG32(mmIH_RB_RPTR, 0);
 WREG32(mmIH_RB_WPTR, 0);


 ih_cntl = (0x10 << IH_CNTL__MC_WRREQ_CREDIT__SHIFT) |
  (0x10 << IH_CNTL__MC_WR_CLEAN_CNT__SHIFT) |
  (0 << IH_CNTL__MC_VMID__SHIFT);

 if (adev->irq.msi_enabled)
  ih_cntl |= IH_CNTL__RPTR_REARM_MASK;
 WREG32(mmIH_CNTL, ih_cntl);

 pci_set_master(adev->pdev);


 cik_ih_enable_interrupts(adev);

 return 0;
}
