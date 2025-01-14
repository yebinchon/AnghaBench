
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct lima_ip {scalar_t__ id; int irq; struct lima_device* dev; } ;
struct lima_device {TYPE_2__* empty_vm; int dev; } ;
struct TYPE_3__ {int dma; } ;
struct TYPE_4__ {TYPE_1__ pd; } ;


 int EIO ;
 int IRQF_SHARED ;
 int LIMA_MMU_COMMAND ;
 int LIMA_MMU_COMMAND_ENABLE_PAGING ;
 int LIMA_MMU_COMMAND_HARD_RESET ;
 int LIMA_MMU_DTE_ADDR ;
 int LIMA_MMU_INT_MASK ;
 int LIMA_MMU_INT_PAGE_FAULT ;
 int LIMA_MMU_INT_READ_BUS_ERROR ;
 int LIMA_MMU_STATUS ;
 int LIMA_MMU_STATUS_PAGING_ENABLED ;
 int dev_err (int ,char*,int ) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct lima_ip*) ;
 int lima_ip_name (struct lima_ip*) ;
 scalar_t__ lima_ip_ppmmu_bcast ;
 int lima_mmu_irq_handler ;
 int lima_mmu_send_command (int,int ,int,int) ;
 int mmu_read (int ) ;
 int mmu_write (int ,int) ;

int lima_mmu_init(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int err;
 u32 v;

 if (ip->id == lima_ip_ppmmu_bcast)
  return 0;

 mmu_write(LIMA_MMU_DTE_ADDR, 0xCAFEBABE);
 if (mmu_read(LIMA_MMU_DTE_ADDR) != 0xCAFEB000) {
  dev_err(dev->dev, "mmu %s dte write test fail\n", lima_ip_name(ip));
  return -EIO;
 }

 mmu_write(LIMA_MMU_COMMAND, LIMA_MMU_COMMAND_HARD_RESET);
 err = lima_mmu_send_command(LIMA_MMU_COMMAND_HARD_RESET,
        LIMA_MMU_DTE_ADDR, v, v == 0);
 if (err)
  return err;

 err = devm_request_irq(dev->dev, ip->irq, lima_mmu_irq_handler,
          IRQF_SHARED, lima_ip_name(ip), ip);
 if (err) {
  dev_err(dev->dev, "mmu %s fail to request irq\n", lima_ip_name(ip));
  return err;
 }

 mmu_write(LIMA_MMU_INT_MASK, LIMA_MMU_INT_PAGE_FAULT | LIMA_MMU_INT_READ_BUS_ERROR);
 mmu_write(LIMA_MMU_DTE_ADDR, dev->empty_vm->pd.dma);
 return lima_mmu_send_command(LIMA_MMU_COMMAND_ENABLE_PAGING,
         LIMA_MMU_STATUS, v,
         v & LIMA_MMU_STATUS_PAGING_ENABLED);
}
