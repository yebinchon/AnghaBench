
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct panfrost_device {int dev; } ;
typedef int irqreturn_t ;


 int AS_FAULTADDRESS_HI (int) ;
 int AS_FAULTADDRESS_LO (int) ;
 int AS_FAULTSTATUS (int) ;
 int BIT (int) ;
 int IRQ_HANDLED ;
 int MMU_INT_CLEAR ;
 int MMU_INT_MASK ;
 int MMU_INT_RAWSTAT ;
 int WARN_ON (int) ;
 int access_type_name (struct panfrost_device*,int) ;
 int dev_err (int ,char*,int,int,char*,int,char*,int,int ,int,int ,int) ;
 int mmu_read (struct panfrost_device*,int ) ;
 int mmu_write (struct panfrost_device*,int ,int) ;
 int panfrost_exception_name (struct panfrost_device*,int) ;
 int panfrost_mmu_map_fault_addr (struct panfrost_device*,int,int) ;

__attribute__((used)) static irqreturn_t panfrost_mmu_irq_handler_thread(int irq, void *data)
{
 struct panfrost_device *pfdev = data;
 u32 status = mmu_read(pfdev, MMU_INT_RAWSTAT);
 int i, ret;

 for (i = 0; status; i++) {
  u32 mask = BIT(i) | BIT(i + 16);
  u64 addr;
  u32 fault_status;
  u32 exception_type;
  u32 access_type;
  u32 source_id;

  if (!(status & mask))
   continue;

  fault_status = mmu_read(pfdev, AS_FAULTSTATUS(i));
  addr = mmu_read(pfdev, AS_FAULTADDRESS_LO(i));
  addr |= (u64)mmu_read(pfdev, AS_FAULTADDRESS_HI(i)) << 32;


  exception_type = fault_status & 0xFF;
  access_type = (fault_status >> 8) & 0x3;
  source_id = (fault_status >> 16);


  if ((status & mask) == BIT(i)) {
   WARN_ON(exception_type < 0xC1 || exception_type > 0xC4);

   ret = panfrost_mmu_map_fault_addr(pfdev, i, addr);
   if (!ret) {
    mmu_write(pfdev, MMU_INT_CLEAR, BIT(i));
    status &= ~mask;
    continue;
   }
  }


  dev_err(pfdev->dev,
   "Unhandled Page fault in AS%d at VA 0x%016llX\n"
   "Reason: %s\n"
   "raw fault status: 0x%X\n"
   "decoded fault status: %s\n"
   "exception type 0x%X: %s\n"
   "access type 0x%X: %s\n"
   "source id 0x%X\n",
   i, addr,
   "TODO",
   fault_status,
   (fault_status & (1 << 10) ? "DECODER FAULT" : "SLAVE FAULT"),
   exception_type, panfrost_exception_name(pfdev, exception_type),
   access_type, access_type_name(pfdev, fault_status),
   source_id);

  mmu_write(pfdev, MMU_INT_CLEAR, mask);

  status &= ~mask;
 }

 mmu_write(pfdev, MMU_INT_MASK, ~0);
 return IRQ_HANDLED;
}
