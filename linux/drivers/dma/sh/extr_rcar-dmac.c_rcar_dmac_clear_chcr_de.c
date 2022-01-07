
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_dmac_chan {int dummy; } ;


 int RCAR_DMACHCR ;
 int RCAR_DMACHCR_DE ;
 int rcar_dmac_chan_read (struct rcar_dmac_chan*,int ) ;
 int rcar_dmac_chan_write (struct rcar_dmac_chan*,int ,int) ;
 int rcar_dmac_chcr_de_barrier (struct rcar_dmac_chan*) ;

__attribute__((used)) static void rcar_dmac_clear_chcr_de(struct rcar_dmac_chan *chan)
{
 u32 chcr = rcar_dmac_chan_read(chan, RCAR_DMACHCR);


 rcar_dmac_chan_write(chan, RCAR_DMACHCR, (chcr & ~RCAR_DMACHCR_DE));


 rcar_dmac_chcr_de_barrier(chan);
}
