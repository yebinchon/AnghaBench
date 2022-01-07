
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int iommu_dev; } ;
typedef int arm_lpae_iopte ;


 int DMA_TO_DEVICE ;
 int __arm_lpae_dma_addr (int *) ;
 int dma_sync_single_for_device (int ,int ,int,int ) ;

__attribute__((used)) static void __arm_lpae_sync_pte(arm_lpae_iopte *ptep,
    struct io_pgtable_cfg *cfg)
{
 dma_sync_single_for_device(cfg->iommu_dev, __arm_lpae_dma_addr(ptep),
       sizeof(*ptep), DMA_TO_DEVICE);
}
