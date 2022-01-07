
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct lima_ip {struct lima_device* dev; } ;
struct lima_device {TYPE_2__* empty_vm; int dev; } ;
struct TYPE_3__ {int dma; } ;
struct TYPE_4__ {TYPE_1__ pd; } ;


 int LIMA_MMU_COMMAND_ENABLE_PAGING ;
 int LIMA_MMU_COMMAND_HARD_RESET ;
 int LIMA_MMU_DTE_ADDR ;
 int LIMA_MMU_INT_MASK ;
 int LIMA_MMU_INT_PAGE_FAULT ;
 int LIMA_MMU_INT_READ_BUS_ERROR ;
 int LIMA_MMU_STATUS ;
 int LIMA_MMU_STATUS_PAGE_FAULT_ACTIVE ;
 int LIMA_MMU_STATUS_PAGING_ENABLED ;
 int dev_info (int ,char*) ;
 int lima_mmu_send_command (int ,int ,int,int) ;
 int mmu_read (int ) ;
 int mmu_write (int ,int) ;

void lima_mmu_page_fault_resume(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 u32 status = mmu_read(LIMA_MMU_STATUS);
 u32 v;

 if (status & LIMA_MMU_STATUS_PAGE_FAULT_ACTIVE) {
  dev_info(dev->dev, "mmu resume\n");

  mmu_write(LIMA_MMU_INT_MASK, 0);
  mmu_write(LIMA_MMU_DTE_ADDR, 0xCAFEBABE);
  lima_mmu_send_command(LIMA_MMU_COMMAND_HARD_RESET,
          LIMA_MMU_DTE_ADDR, v, v == 0);
  mmu_write(LIMA_MMU_INT_MASK, LIMA_MMU_INT_PAGE_FAULT | LIMA_MMU_INT_READ_BUS_ERROR);
  mmu_write(LIMA_MMU_DTE_ADDR, dev->empty_vm->pd.dma);
  lima_mmu_send_command(LIMA_MMU_COMMAND_ENABLE_PAGING,
          LIMA_MMU_STATUS, v,
          v & LIMA_MMU_STATUS_PAGING_ENABLED);
 }
}
