
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idma64_chan {int mask; } ;
struct idma64 {int dummy; } ;


 int CFG_HI ;
 int CFG_LO ;
 int ERROR ;
 int IDMA64C_CFGH_DST_PER (int ) ;
 int IDMA64C_CFGH_SRC_PER (int) ;
 int IDMA64C_CFGL_DST_BURST_ALIGN ;
 int IDMA64C_CFGL_SRC_BURST_ALIGN ;
 int MASK (int ) ;
 int XFER ;
 int channel_set_bit (struct idma64*,int ,int ) ;
 int channel_writel (struct idma64_chan*,int ,int) ;
 int idma64_on (struct idma64*) ;

__attribute__((used)) static void idma64_chan_init(struct idma64 *idma64, struct idma64_chan *idma64c)
{
 u32 cfghi = IDMA64C_CFGH_SRC_PER(1) | IDMA64C_CFGH_DST_PER(0);
 u32 cfglo = 0;


 cfglo |= IDMA64C_CFGL_DST_BURST_ALIGN | IDMA64C_CFGL_SRC_BURST_ALIGN;

 channel_writel(idma64c, CFG_LO, cfglo);
 channel_writel(idma64c, CFG_HI, cfghi);


 channel_set_bit(idma64, MASK(XFER), idma64c->mask);
 channel_set_bit(idma64, MASK(ERROR), idma64c->mask);
 idma64_on(idma64);
}
