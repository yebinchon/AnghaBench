
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_dmac_chan {int dummy; } ;


 int RCAR_DMACHCR ;
 int RCAR_DMACHCR_DE ;
 int RCAR_DMACHCR_TE ;
 int rcar_dmac_chan_read (struct rcar_dmac_chan*,int ) ;

__attribute__((used)) static bool rcar_dmac_chan_is_busy(struct rcar_dmac_chan *chan)
{
 u32 chcr = rcar_dmac_chan_read(chan, RCAR_DMACHCR);

 return !!(chcr & (RCAR_DMACHCR_DE | RCAR_DMACHCR_TE));
}
