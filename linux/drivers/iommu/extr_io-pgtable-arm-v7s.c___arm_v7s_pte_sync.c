
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int iommu_dev; scalar_t__ coherent_walk; } ;
typedef int arm_v7s_iopte ;


 int DMA_TO_DEVICE ;
 int __arm_v7s_dma_addr (int *) ;
 int dma_sync_single_for_device (int ,int ,int,int ) ;

__attribute__((used)) static void __arm_v7s_pte_sync(arm_v7s_iopte *ptep, int num_entries,
          struct io_pgtable_cfg *cfg)
{
 if (cfg->coherent_walk)
  return;

 dma_sync_single_for_device(cfg->iommu_dev, __arm_v7s_dma_addr(ptep),
       num_entries * sizeof(*ptep), DMA_TO_DEVICE);
}
