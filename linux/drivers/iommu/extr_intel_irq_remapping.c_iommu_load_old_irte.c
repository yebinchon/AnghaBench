
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct irte {int dummy; } ;
struct intel_iommu {TYPE_1__* ir_table; scalar_t__ reg; } ;
typedef int phys_addr_t ;
struct TYPE_5__ {scalar_t__ present; } ;
struct TYPE_4__ {int bitmap; TYPE_2__* base; } ;


 scalar_t__ DMAR_IRTA_REG ;
 int EINVAL ;
 int ENOMEM ;
 int INTR_REMAP_TABLE_ENTRIES ;
 int INTR_REMAP_TABLE_REG_SIZE ;
 int INTR_REMAP_TABLE_REG_SIZE_MASK ;
 int MEMREMAP_WB ;
 int VTD_PAGE_MASK ;
 int __iommu_flush_cache (struct intel_iommu*,TYPE_2__*,size_t) ;
 int bitmap_set (int ,unsigned int,int) ;
 int dmar_readq (scalar_t__) ;
 int memcpy (TYPE_2__*,struct irte*,size_t) ;
 struct irte* memremap (int,size_t,int ) ;
 int memunmap (struct irte*) ;

__attribute__((used)) static int iommu_load_old_irte(struct intel_iommu *iommu)
{
 struct irte *old_ir_table;
 phys_addr_t irt_phys;
 unsigned int i;
 size_t size;
 u64 irta;


 irta = dmar_readq(iommu->reg + DMAR_IRTA_REG);
 if ((irta & INTR_REMAP_TABLE_REG_SIZE_MASK)
      != INTR_REMAP_TABLE_REG_SIZE)
  return -EINVAL;

 irt_phys = irta & VTD_PAGE_MASK;
 size = INTR_REMAP_TABLE_ENTRIES*sizeof(struct irte);


 old_ir_table = memremap(irt_phys, size, MEMREMAP_WB);
 if (!old_ir_table)
  return -ENOMEM;


 memcpy(iommu->ir_table->base, old_ir_table, size);

 __iommu_flush_cache(iommu, iommu->ir_table->base, size);





 for (i = 0; i < INTR_REMAP_TABLE_ENTRIES; i++) {
  if (iommu->ir_table->base[i].present)
   bitmap_set(iommu->ir_table->bitmap, i, 1);
 }

 memunmap(old_ir_table);

 return 0;
}
