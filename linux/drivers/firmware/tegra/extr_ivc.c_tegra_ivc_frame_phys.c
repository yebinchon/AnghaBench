
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_ivc_header {int dummy; } ;
struct tegra_ivc {unsigned int frame_size; } ;
typedef scalar_t__ dma_addr_t ;



__attribute__((used)) static inline dma_addr_t tegra_ivc_frame_phys(struct tegra_ivc *ivc,
           dma_addr_t phys,
           unsigned int frame)
{
 unsigned long offset;

 offset = sizeof(struct tegra_ivc_header) + ivc->frame_size * frame;

 return phys + offset;
}
