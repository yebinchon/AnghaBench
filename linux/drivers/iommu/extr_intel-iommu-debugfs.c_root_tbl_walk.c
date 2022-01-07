
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct seq_file {int dummy; } ;
struct intel_iommu {int lock; int root_entry; int name; } ;


 int ctx_tbl_walk (struct seq_file*,struct intel_iommu*,int) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static void root_tbl_walk(struct seq_file *m, struct intel_iommu *iommu)
{
 unsigned long flags;
 u16 bus;

 spin_lock_irqsave(&iommu->lock, flags);
 seq_printf(m, "IOMMU %s: Root Table Address: 0x%llx\n", iommu->name,
     (u64)virt_to_phys(iommu->root_entry));
 seq_puts(m, "B.D.F\tRoot_entry\t\t\t\tContext_entry\t\t\t\tPASID\tPASID_table_entry\n");






 for (bus = 0; bus < 256; bus++)
  ctx_tbl_walk(m, iommu, bus);

 spin_unlock_irqrestore(&iommu->lock, flags);
}
