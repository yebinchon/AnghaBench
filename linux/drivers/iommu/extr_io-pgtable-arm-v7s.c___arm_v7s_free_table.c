
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_pgtable_cfg {int coherent_walk; struct device* iommu_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct io_pgtable_cfg cfg; } ;
struct arm_v7s_io_pgtable {int l2_tables; TYPE_1__ iop; } ;


 size_t ARM_V7S_TABLE_SIZE (int) ;
 int DMA_TO_DEVICE ;
 int __arm_v7s_dma_addr (void*) ;
 int dma_unmap_single (struct device*,int ,size_t,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int kmem_cache_free (int ,void*) ;

__attribute__((used)) static void __arm_v7s_free_table(void *table, int lvl,
     struct arm_v7s_io_pgtable *data)
{
 struct io_pgtable_cfg *cfg = &data->iop.cfg;
 struct device *dev = cfg->iommu_dev;
 size_t size = ARM_V7S_TABLE_SIZE(lvl);

 if (!cfg->coherent_walk)
  dma_unmap_single(dev, __arm_v7s_dma_addr(table), size,
     DMA_TO_DEVICE);
 if (lvl == 1)
  free_pages((unsigned long)table, get_order(size));
 else
  kmem_cache_free(data->l2_tables, table);
}
