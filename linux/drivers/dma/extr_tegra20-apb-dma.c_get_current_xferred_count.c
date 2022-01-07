
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_sg_req {unsigned long req_len; } ;
struct tegra_dma_channel {int dummy; } ;


 unsigned long TEGRA_APBDMA_STATUS_COUNT_MASK ;

__attribute__((used)) static inline int get_current_xferred_count(struct tegra_dma_channel *tdc,
 struct tegra_dma_sg_req *sg_req, unsigned long status)
{
 return sg_req->req_len - (status & TEGRA_APBDMA_STATUS_COUNT_MASK) - 4;
}
