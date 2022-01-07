
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dma; } ;
struct lima_vm {TYPE_1__ pd; } ;
struct lima_ip {struct lima_device* dev; } ;
struct lima_device {int dummy; } ;


 int LIMA_MMU_COMMAND ;
 int LIMA_MMU_COMMAND_DISABLE_STALL ;
 int LIMA_MMU_COMMAND_ENABLE_STALL ;
 int LIMA_MMU_COMMAND_ZAP_CACHE ;
 int LIMA_MMU_DTE_ADDR ;
 int LIMA_MMU_STATUS ;
 int LIMA_MMU_STATUS_STALL_ACTIVE ;
 int lima_mmu_send_command (int ,int ,int,int) ;
 int mmu_write (int ,int ) ;

void lima_mmu_switch_vm(struct lima_ip *ip, struct lima_vm *vm)
{
 struct lima_device *dev = ip->dev;
 u32 v;

 lima_mmu_send_command(LIMA_MMU_COMMAND_ENABLE_STALL,
         LIMA_MMU_STATUS, v,
         v & LIMA_MMU_STATUS_STALL_ACTIVE);

 if (vm)
  mmu_write(LIMA_MMU_DTE_ADDR, vm->pd.dma);


 mmu_write(LIMA_MMU_COMMAND, LIMA_MMU_COMMAND_ZAP_CACHE);

 lima_mmu_send_command(LIMA_MMU_COMMAND_DISABLE_STALL,
         LIMA_MMU_STATUS, v,
         !(v & LIMA_MMU_STATUS_STALL_ACTIVE));
}
