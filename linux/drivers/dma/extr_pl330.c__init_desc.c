
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx_submit; } ;
struct TYPE_3__ {void* dcctl; void* scctl; int swap; } ;
struct dma_pl330_desc {int node; TYPE_2__ txd; TYPE_1__ rqcfg; } ;


 void* CCTRL0 ;
 int INIT_LIST_HEAD (int *) ;
 int SWAP_NO ;
 int pl330_tx_submit ;

__attribute__((used)) static inline void _init_desc(struct dma_pl330_desc *desc)
{
 desc->rqcfg.swap = SWAP_NO;
 desc->rqcfg.scctl = CCTRL0;
 desc->rqcfg.dcctl = CCTRL0;
 desc->txd.tx_submit = pl330_tx_submit;

 INIT_LIST_HEAD(&desc->node);
}
