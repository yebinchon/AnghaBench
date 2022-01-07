
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_dmac_chan {int dummy; } ;


 int RCAR_DMACHCR ;
 int RCAR_DMACHCR_CAE ;
 int RCAR_DMACHCR_CAIE ;
 int RCAR_DMACHCR_DE ;
 int RCAR_DMACHCR_DSE ;
 int RCAR_DMACHCR_DSIE ;
 int RCAR_DMACHCR_IE ;
 int RCAR_DMACHCR_TE ;
 int rcar_dmac_chan_read (struct rcar_dmac_chan*,int ) ;
 int rcar_dmac_chan_write (struct rcar_dmac_chan*,int ,int) ;
 int rcar_dmac_chcr_de_barrier (struct rcar_dmac_chan*) ;

__attribute__((used)) static void rcar_dmac_chan_halt(struct rcar_dmac_chan *chan)
{
 u32 chcr = rcar_dmac_chan_read(chan, RCAR_DMACHCR);

 chcr &= ~(RCAR_DMACHCR_DSE | RCAR_DMACHCR_DSIE | RCAR_DMACHCR_IE |
    RCAR_DMACHCR_TE | RCAR_DMACHCR_DE |
    RCAR_DMACHCR_CAE | RCAR_DMACHCR_CAIE);
 rcar_dmac_chan_write(chan, RCAR_DMACHCR, chcr);
 rcar_dmac_chcr_de_barrier(chan);
}
