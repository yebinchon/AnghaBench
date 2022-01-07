
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_ivc {unsigned int num_frames; int peer; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_FROM_DEVICE ;
 scalar_t__ WARN_ON (int) ;
 int dma_sync_single_for_cpu (int ,scalar_t__,size_t,int ) ;
 scalar_t__ tegra_ivc_frame_phys (struct tegra_ivc*,scalar_t__,unsigned int) ;

__attribute__((used)) static inline void tegra_ivc_invalidate_frame(struct tegra_ivc *ivc,
           dma_addr_t phys,
           unsigned int frame,
           unsigned int offset,
           size_t size)
{
 if (!ivc->peer || WARN_ON(frame >= ivc->num_frames))
  return;

 phys = tegra_ivc_frame_phys(ivc, phys, frame) + offset;

 dma_sync_single_for_cpu(ivc->peer, phys, size, DMA_FROM_DEVICE);
}
