
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_ivc {int peer; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int TEGRA_IVC_ALIGN ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;

__attribute__((used)) static inline void tegra_ivc_flush(struct tegra_ivc *ivc, dma_addr_t phys)
{
 if (!ivc->peer)
  return;

 dma_sync_single_for_device(ivc->peer, phys, TEGRA_IVC_ALIGN,
       DMA_TO_DEVICE);
}
