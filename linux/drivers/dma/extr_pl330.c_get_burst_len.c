
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data_bus_width; int data_buf_dep; int num_chan; } ;
struct pl330_dmac {TYPE_2__ pcfg; } ;
struct TYPE_3__ {int brst_size; } ;
struct dma_pl330_desc {TYPE_1__ rqcfg; struct dma_pl330_chan* pchan; } ;
struct dma_pl330_chan {struct pl330_dmac* dmac; } ;


 int PL330_MAX_BURST ;

__attribute__((used)) static inline int get_burst_len(struct dma_pl330_desc *desc, size_t len)
{
 struct dma_pl330_chan *pch = desc->pchan;
 struct pl330_dmac *pl330 = pch->dmac;
 int burst_len;

 burst_len = pl330->pcfg.data_bus_width / 8;
 burst_len *= pl330->pcfg.data_buf_dep / pl330->pcfg.num_chan;
 burst_len >>= desc->rqcfg.brst_size;


 if (burst_len > PL330_MAX_BURST)
  burst_len = PL330_MAX_BURST;

 return burst_len;
}
