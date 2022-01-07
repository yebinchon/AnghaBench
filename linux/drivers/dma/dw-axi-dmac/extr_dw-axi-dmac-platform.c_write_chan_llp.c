
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dma_chan {int dummy; } ;
typedef int dma_addr_t ;


 int CH_LLP ;
 int axi_chan_iowrite64 (struct axi_dma_chan*,int ,int ) ;

__attribute__((used)) static void write_chan_llp(struct axi_dma_chan *chan, dma_addr_t adr)
{
 axi_chan_iowrite64(chan, CH_LLP, adr);
}
