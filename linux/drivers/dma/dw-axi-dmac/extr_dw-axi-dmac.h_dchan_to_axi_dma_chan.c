
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct axi_dma_chan {int dummy; } ;


 int to_virt_chan (struct dma_chan*) ;
 struct axi_dma_chan* vc_to_axi_dma_chan (int ) ;

__attribute__((used)) static inline struct axi_dma_chan *dchan_to_axi_dma_chan(struct dma_chan *dchan)
{
 return vc_to_axi_dma_chan(to_virt_chan(dchan));
}
