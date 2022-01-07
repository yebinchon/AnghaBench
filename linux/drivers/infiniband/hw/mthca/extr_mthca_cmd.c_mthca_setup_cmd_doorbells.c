
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int flags; int dbell_map; int * dbell_offsets; } ;
struct mthca_dev {TYPE_1__ cmd; int pdev; } ;
typedef scalar_t__ phys_addr_t ;


 int MTHCA_CMD_POST_DOORBELLS ;
 int PAGE_MASK ;
 int ioremap (scalar_t__,int) ;
 int max (int,int ) ;
 int mthca_dbg (struct mthca_dev*,char*) ;
 int mthca_warn (struct mthca_dev*,char*,unsigned long long,int) ;
 int pci_resource_len (int ,int) ;
 scalar_t__ pci_resource_start (int ,int) ;

__attribute__((used)) static void mthca_setup_cmd_doorbells(struct mthca_dev *dev, u64 base)
{
 phys_addr_t addr;
 u16 max_off = 0;
 int i;

 for (i = 0; i < 8; ++i)
  max_off = max(max_off, dev->cmd.dbell_offsets[i]);

 if ((base & PAGE_MASK) != ((base + max_off) & PAGE_MASK)) {
  mthca_warn(dev, "Firmware doorbell region at 0x%016llx, "
      "length 0x%x crosses a page boundary\n",
      (unsigned long long) base, max_off);
  return;
 }

 addr = pci_resource_start(dev->pdev, 2) +
  ((pci_resource_len(dev->pdev, 2) - 1) & base);
 dev->cmd.dbell_map = ioremap(addr, max_off + sizeof(u32));
 if (!dev->cmd.dbell_map)
  return;

 dev->cmd.flags |= MTHCA_CMD_POST_DOORBELLS;
 mthca_dbg(dev, "Mapped doorbell page for posting FW commands\n");
}
