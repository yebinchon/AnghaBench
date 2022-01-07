
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysmmu_pte_t ;


 int DMA_TO_DEVICE ;
 int cpu_to_le32 (int ) ;
 int dma_dev ;
 int dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int dma_sync_single_for_device (int ,int ,int,int ) ;
 int virt_to_phys (int *) ;

__attribute__((used)) static inline void update_pte(sysmmu_pte_t *ent, sysmmu_pte_t val)
{
 dma_sync_single_for_cpu(dma_dev, virt_to_phys(ent), sizeof(*ent),
    DMA_TO_DEVICE);
 *ent = cpu_to_le32(val);
 dma_sync_single_for_device(dma_dev, virt_to_phys(ent), sizeof(*ent),
       DMA_TO_DEVICE);
}
