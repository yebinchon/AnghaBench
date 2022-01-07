
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_edma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;


 int to_virt_chan (struct dma_chan*) ;
 struct dw_edma_chan* vc2dw_edma_chan (int ) ;

__attribute__((used)) static inline
struct dw_edma_chan *dchan2dw_edma_chan(struct dma_chan *dchan)
{
 return vc2dw_edma_chan(to_virt_chan(dchan));
}
