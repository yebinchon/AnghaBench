
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rcar_dmac {int channels_mask; int dev; } ;


 int EIO ;
 int RCAR_DMACHCLR ;
 int RCAR_DMAOR ;
 int RCAR_DMAOR_AE ;
 int RCAR_DMAOR_DME ;
 int RCAR_DMAOR_PRI_FIXED ;
 int dev_warn (int ,char*) ;
 int rcar_dmac_read (struct rcar_dmac*,int ) ;
 int rcar_dmac_write (struct rcar_dmac*,int ,int) ;

__attribute__((used)) static int rcar_dmac_init(struct rcar_dmac *dmac)
{
 u16 dmaor;


 rcar_dmac_write(dmac, RCAR_DMACHCLR, dmac->channels_mask);
 rcar_dmac_write(dmac, RCAR_DMAOR,
   RCAR_DMAOR_PRI_FIXED | RCAR_DMAOR_DME);

 dmaor = rcar_dmac_read(dmac, RCAR_DMAOR);
 if ((dmaor & (RCAR_DMAOR_AE | RCAR_DMAOR_DME)) != RCAR_DMAOR_DME) {
  dev_warn(dmac->dev, "DMAOR initialization failed.\n");
  return -EIO;
 }

 return 0;
}
