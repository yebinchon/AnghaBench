
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbi_range {int spi_start; int nr_spis; int bm; } ;
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int desc; } ;
typedef TYPE_1__ msi_alloc_info_t ;


 int ENOSPC ;
 scalar_t__ GICD_SETSPI_NSR ;
 int bitmap_find_free_region (int ,int ,int ) ;
 int get_count_order (unsigned int) ;
 int iommu_dma_prepare_msi (int ,scalar_t__) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,int,int *,struct mbi_range*) ;
 int mbi_free_msi (struct mbi_range*,int,unsigned int) ;
 int mbi_irq_chip ;
 int mbi_irq_gic_domain_alloc (struct irq_domain*,unsigned int,int) ;
 int mbi_lock ;
 scalar_t__ mbi_phys_base ;
 int mbi_range_nr ;
 struct mbi_range* mbi_ranges ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mbi_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
       unsigned int nr_irqs, void *args)
{
 msi_alloc_info_t *info = args;
 struct mbi_range *mbi = ((void*)0);
 int hwirq, offset, i, err = 0;

 mutex_lock(&mbi_lock);
 for (i = 0; i < mbi_range_nr; i++) {
  offset = bitmap_find_free_region(mbi_ranges[i].bm,
       mbi_ranges[i].nr_spis,
       get_count_order(nr_irqs));
  if (offset >= 0) {
   mbi = &mbi_ranges[i];
   break;
  }
 }
 mutex_unlock(&mbi_lock);

 if (!mbi)
  return -ENOSPC;

 hwirq = mbi->spi_start + offset;

 err = iommu_dma_prepare_msi(info->desc,
        mbi_phys_base + GICD_SETSPI_NSR);
 if (err)
  return err;

 for (i = 0; i < nr_irqs; i++) {
  err = mbi_irq_gic_domain_alloc(domain, virq + i, hwirq + i);
  if (err)
   goto fail;

  irq_domain_set_hwirq_and_chip(domain, virq + i, hwirq + i,
           &mbi_irq_chip, mbi);
 }

 return 0;

fail:
 irq_domain_free_irqs_parent(domain, virq, nr_irqs);
 mbi_free_msi(mbi, hwirq, nr_irqs);
 return err;
}
